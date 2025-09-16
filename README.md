# fog-ai-mesh-db
Fog AI Mesh routing DB
Running A Fog to DTN mesh B-lan network we do Fog AI on whatever computers are available on our mobile network.
Back ground Routing AI requests within our FOG network requires that we create a Reinforcement Learning Based Load Balancing Algorithm.
The proposed process allows Fog nodes to offload an optimal number of tasks among incoming tasks by selecting an available neighboring Fog node under their respective resource capabilities with the aim to minimize the processing time and the overall overloading probability. See The Paper below.
Read https://arxiv.org/abs/1901.10023

How to Set up an IPv6 Fog Network for Home Automation

1. Network Architecture

A fog network extends cloud computing to the edge of the network, bringing computation and data storage closer to the devices. In an offline setup, the home server acts as the central fog node, while the smart devices (lights, thermostats, etc.) are the edge nodes. The server handles local processing and control, and the devices communicate with it directly using IPv6. IPv6 is ideal for this as it provides a vast address space, eliminating the need for complex NAT setups.

2. Network Configuration

First, assign a unique local IPv6 subnet to your home network. A Unique Local Address (ULA) is best for this, as it's not routable on the public internet. ULAs start with fd00::/8. You can choose any prefix within this range, such as fd12:3456:7890::/48.

Home Server Setup

    Enable IPv6 forwarding: This turns your server into a router for the local network.
    Bash

sysctl -w net.ipv6.conf.all.forwarding=1

Configure a static IPv6 address: Assign an address from your chosen ULA subnet to the server's network interface (e.g., eth0).
Bash

ip -6 addr add fd12:3456:7890::1/64 dev eth0
