# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR="MUDLER"
DIST_VERSION=0.23

inherit perl-module

DESCRIPTION="Execute external programs or internal code blocks as separate process"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"

RDEPEND=">=dev-perl/Mojolicious-7.32"

DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
