# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

MY_PN="DMitry"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Deepmagic Information Gathering Tool"
HOMEPAGE="http://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/"
SRC_URI="https://dl.packetstormsecurity.net/UNIX/misc/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"