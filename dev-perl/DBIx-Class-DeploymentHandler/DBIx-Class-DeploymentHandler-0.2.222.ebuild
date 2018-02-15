# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR="FREW"
DIST_VERSION=0.002222

inherit perl-module

DESCRIPTION="Extensible DBIx::Class deployment"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Carp-Clan
	>=dev-perl/Context-Preserve-0.10.0
	>=dev-perl/DBIx-Class-0.81.210
	>=dev-perl/Log-Contextual-0.5.5
	>=dev-perl/Moo-1.3.0
	>=dev-perl/Moose-1.0.0
	>=dev-perl/MooseX-Role-Parameterized-0.180.0
	dev-perl/namespace-autoclean
	>=dev-perl/Path-Class-0.260.0
	>=dev-perl/SQL-Translator-0.110.50
	dev-perl/Sub-Exporter-Progressive
	>=dev-perl/Text-Brew-0.20.0
	dev-perl/Try-Tiny
	virtual/perl-autodie
	virtual/perl-Carp
	>=virtual/perl-parent-0.225.0
"

DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/aliased
		>=dev-perl/DBD-SQLite-1.350.0
		>=dev-perl/Test-Fatal-0.006
		>=dev-perl/Test-Requires-0.006
		virtual/perl-File-Temp
		>=virtual/perl-Test-Simple-0.880.0
	)
"

src_test() {
	perl_rm_files t/author-pod-syntax.t
	perl-module_src_test
}
