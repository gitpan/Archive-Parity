#!/usr/bin/perl
# Copyright (c) 2000 Flavio Glock <fglock@pucrs.br>. All rights reserved.
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.

# do_parity.pl

use Archive::Parity;

	$outfile = shift;
	while ($filename = shift) {
		push @file_name, $filename;
	}
	$err = Archive::Parity::do_parity ($outfile, @file_name);
	print $err if $err;

1;


