# nginx

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with nginx](#setup)
    * [What nginx affects](#what-nginx-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with nginx](#beginning-with-nginx)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Server a website over https with nginx.

## Module Description

Simple puppet module to install nginx and configure it to serve a website over https. The manifest uses self-signed certificates and re-directs traffic from http to https.

## Setup

Installs and configures nginx to serve a static website over https.

### What nginx affects



### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

### Beginning with nginx

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

Tested with Ubuntu 14.04

## Development

Whatever you can do to better is welcome.
