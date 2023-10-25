#!/bin/bash
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential

CHECK_RUBY=`apt list --installed |grep ruby`
CHECK_BUNDLER=`apt list --installed |grep bundler`

if [ -n "$CHECK_RUBY"  ] && [ -n "$CHECK_BUNDLER"  ]; then
echo "Ruby and Bundler installed"
else echo "Ruby or Bundler not installed"
fi