package Rename;

use v5.32;
use utf8;
use warnings;
use open qw(:std :utf8);
no feature qw(indirect);
no multidimensional;
use feature qw(signatures);
no warnings qw(experimental::signatures);

use Path::Tiny;

sub rename_with_new_name ($old_path, $new_name) {
	my $new_path = path($old_path);
	$new_path = $new_path->parent->child($new_name)->stringify;
	rename($old_path, $new_path) or die ("Rename from $old_path to $new_name failed: $!");
}

1;
