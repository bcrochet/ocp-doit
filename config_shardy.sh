#!/bin/bash

LOCAL_IP=10.1.8.89
CIDR=22
NETWORK=10.1.11
FLOATING_IP_START=195
FLOATING_IP_END=209
DEFAULT_ROUTE=10.1.11.254
PUBLIC_INTERFACE=em1
DNS_SERVER_1=10.38.5.26
DNS_SERVER_2=10.35.255.14


# Needed if running in a VM
PARAMETERS_EXTRA="NtpServer: ['clock.redhat.com']"
