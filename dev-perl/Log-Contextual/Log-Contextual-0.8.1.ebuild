# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR="FREW"
DIST_VERSION=0.008001

inherit perl-module

DESCRIPTION="Simple logging interface with a contextual log"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"

RDEPEND="dev-perl/Data-Dumper-Concise
	>=dev-perl/Exporter-Declare-0.111.0
	>=dev-perl/Moo-1.3.0
	virtual/perl-Scalar-List-Utils
"

DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/Test-Fatal-0.006
	)
"

src_test() {
	perl_rm_files t/author-pod-syntax.t
	perl-module_src_test
}
