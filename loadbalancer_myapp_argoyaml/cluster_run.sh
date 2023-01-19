#!/bin/bash
sudo kind create cluster --name cluster01 --config cluster01-kind.yml --image=kindest/node:v1.21.2