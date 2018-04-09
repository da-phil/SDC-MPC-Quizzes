#! /bin/bash

IPOPT_VERSION=3.12.7

# update
sudo apt-get update

# gfortran dependency
sudo apt-get install gfortran

# get unzip
sudo apt-get install unzip

# Ipopt: get, install, unzip
wget https://www.coin-or.org/download/source/Ipopt/Ipopt-$IPOPT_VERSION.zip && unzip Ipopt-$IPOPT_VERSION.zip && rm Ipopt-$IPOPT_VERSION.zip

./install_ipopt.sh Ipopt-$IPOPT_VERSION

# CppAD
sudo apt-get install cppad

# Gnuplot
sudo apt-get install gnuplot

# python and matplotlib
sudo apt-get install python-matplotlib
sudo apt-get install python2.7-dev
