#!/bin/bash

# Update CentOS with any patches
yum update -y --exclude=kernel

# Tools
# yum install -y nano git tree ntp
yum install -y nano tree
