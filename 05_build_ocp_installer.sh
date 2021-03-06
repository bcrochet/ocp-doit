#!/bin/bash

set -ex

eval "$(go env)"
echo "$GOPATH" | lolcat # should print $HOME/go or something like that

figlet "Building terraform" | lolcat

pushd $GOPATH/src/github.com/terraform-providers/terraform-provider-openstack
make build
mkdir -p ~/.terraform.d/plugins
cd ~/.terraform.d/plugins/
rm -f terraform-provider-openstack_v1.6.1
ln -s ~/go/bin/terraform-provider-openstack terraform-provider-openstack_v1.6.1
popd

figlet "Building the Installer" | lolcat

pushd "$GOPATH/src/github.com/openshift/installer"
./hack/get-terraform.sh
export MODE=dev
./hack/build.sh
popd

pushd "$GOPATH/src/github.com/openshift/ci-operator"
make build
popd

