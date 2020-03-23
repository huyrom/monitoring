#!/bin/bash
### 1. Install the Prometheus    ###
### 2. Install the node_exporter ###
### https://www.digitalocean.com/community/tutorials/how-to-install-prometheus-on-ubuntu-16-04 ###

### Metrics ###
### Monitoring the average system load over 1 min ###
### Query: node_load1 

### Monitoring the average memory usage over the past 5 mins
### Query ~ 100 * (1 - ((avg_over_time(node_memory_MemFree[5m]) + avg_over_time(node_memory_Cached[5m]) + avg_over_time(node_memory_Buffers[5m])) / avg_over_time(node_memory_MemTotal[5m])))

### Monitoring the disk availibility
### Query ~ node_filesystem_avail {device="/dev/mapper/vg00-root"}/ node_filesystem_size {device="/dev/mapper/vg00-root"}*100

### Monitoring the nginx service
### Query ~ node_systemd_unit_state{name="nginx.service", state="active"}

### Monitoring the outbound bandwidth of network interface
### Query ~ rate(node_network_transmit_bytes {device="ens192"}[1m])*8/1024/1024

### Monitoring the inbound bandwidth of network interface
### rate(node_network_receive_bytes {device="ens192"}[1m])*8/1024/1024

