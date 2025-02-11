#!/usr/bin/env perl

use strict;
use warnings;

use Open::This qw( to_editor_args );
use Test::Differences qw( eq_or_diff );
use Test::More;

local $ENV{EDITOR} = 'nano';

eq_or_diff(
    [ to_editor_args('t/git.t:10:22') ],
    [
        '+10,22',
        't/git.t',
    ],
    'line and column'
);

done_testing();
