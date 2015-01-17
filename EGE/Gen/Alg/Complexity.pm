# Copyright © 2015 Alexander S. Klenin
# Licensed under GPL version 2 or later.
# http://github.com/klenin/EGE
package EGE::Gen::Alg::Complexity;
use base 'EGE::GenBase::SingleChoice';

use strict;
use warnings;
use utf8;

use List::Util;

use EGE::Prog;
use EGE::Random;
use EGE::Utils;

sub elem { # ax^y
    my ($x, $a, $y) = @_;
    return $a if $y == 0;
    my $p = $y == 1 ? $x : [ '**', $x, $y ];
    $a == 1 ? $p : [ '*', $a, $p ];
}

sub o_poly {
    my ($self) = @_;
    my $n = "<i>n</i>";
    my $max_power = rnd->in_range(3, 5);
    my $max_coeff = rnd->in_range(2, 7);
    my @powers = sort { $b <=> $a } rnd->pick_n(4, 0 .. 6);
    my @coeffs = map rnd->in_range(1, 9), 1 .. 4;
    my @elems = map elem($n, @$_), rnd->shuffle(@{EGE::Utils::transpose \@coeffs, \@powers});
    my $func = EGE::Prog::make_expr(
        List::Util::reduce { [ '+', $a, $b ] } @elems)->to_lang_named('Logic');
    $self->{text} ="Функция $func является";
    $self->variants(map "<i>O</i>($_)", map EGE::Prog::make_expr($_)->to_lang_named('Logic'),
        map(elem($n, 1, $_), grep $_ > 0, @powers), List::Util::max(@coeffs));
}

1;