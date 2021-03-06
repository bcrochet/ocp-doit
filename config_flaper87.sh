#!/bin/bash

LOCAL_IP=10.1.8.88
CIDR=22
NETWORK=10.1.11
FLOATING_IP_START=180
FLOATING_IP_END=194
DEFAULT_ROUTE=10.1.11.254
PUBLIC_INTERFACE=em1
DNS_SERVER_1=10.11.5.19

BOOTSTRAP_FLOATING_IP=10.1.11.181

# Needed if running in a VM
PARAMETERS_EXTRA="NtpServer: ['clock.redhat.com']"
