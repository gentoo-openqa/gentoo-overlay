# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR="EXODIST"
DIST_VERSION=0.004

inherit perl-module

DESCRIPTION="Minimalist Fennec, the commonly used bits"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"

RDEPEND="virtual/perl-Scalar-List-Utils"

DEPEND="${RDEPEND}
	dev-perl/Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
