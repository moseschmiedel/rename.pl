#!/usr/bin/env perl

use v5.32;
use utf8;
use warnings;
use open qw(:std :utf8);
no feature qw(indirect);
no multidimensional;
use feature qw(signatures);
no warnings qw(experimental::signatures);

use Path::Tiny;

my $script = path("bin/app.pl");
my $install_location = path("~/.local/bin/rename.pl");
$install_location->parent->mkpath;
$script->copy($install_location->stringify);
$install_location->chmod("u+wx");
