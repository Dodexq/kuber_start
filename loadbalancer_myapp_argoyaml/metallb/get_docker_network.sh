#!/bin/bash
sudo docker network inspect -f '{{.IPAM.Config}}' kind