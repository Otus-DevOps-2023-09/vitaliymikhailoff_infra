#!/bin/bash
until apt update 2>&1;
do
  sleep 1
done
apt install -y ruby-full ruby-bundler build-essential
