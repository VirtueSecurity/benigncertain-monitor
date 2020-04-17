# Quickstart
```
git clone https://github.com/VirtueSecurity/benigncertain-monitor.git
sudo docker build . -t benign-monitor
sudo docker run benign-monitor <host>
```
# Overview
This dockerized python script is a wrapper for the NSA BENIGNCERTAIN Cisco exploit. This script polls the vulnerable service over time to identify probable passwords and identify other potential sensitive information. Since this vulnerability typically only reveals a point in time status, we built this as a service to show potential impact given a broader period of time.

