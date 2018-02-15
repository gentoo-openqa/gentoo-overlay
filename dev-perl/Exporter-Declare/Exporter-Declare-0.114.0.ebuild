# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR="EXODIST"
DIST_VERSION=0.114

inherit perl-module

DESCRIPTION="Exporting done right"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"
RESTRICT="test"
RDEPEND="dev-perl/aliased
	dev-perl/Meta-Builder
	virtual/perl-Carp
	virtual/perl-Scalar-List-Utils
"

DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
