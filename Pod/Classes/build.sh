#!/bin/sh

path=`dirname $0`
erb ${path}/EXTView.h.erb > ${path}/EXTView.h
erb ${path}/EXTView.m.erb > ${path}/EXTView.m
