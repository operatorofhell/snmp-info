#!/usr/bin/perl
# 00_local_perlcritic.t - Test file for PBP compliance for SNMP::Info
# $Id$

use strict;
use warnings;
use Test::More;

eval "use Test::Perl::Critic (-profile => 't/perlcritic.rc')";
plan skip_all => "Test::Perl::Critic required for testing PBP compliance" if $@;

Test::Perl::Critic::all_critic_ok();

