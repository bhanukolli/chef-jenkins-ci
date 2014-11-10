#
# Cookbook Name:: jenkins_ci
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'apt'
include_recipe 'git'
include_recipe 'wlp'
include_recipe 'maven'
include_recipe 'jenkins::master'

jenkins_plugin 'scm-api'
jenkins_plugin 'git-client'
jenkins_plugin 'git'
jenkins_plugin 'ssh'
