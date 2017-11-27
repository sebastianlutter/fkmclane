# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils kodi-addon

DESCRIPTION="Kodi's Adaptive inputstream addon"
HOMEPAGE="https://github.com/peak3d/inputstream.adaptive.git"
SRC_URI=""

case ${PV} in
9999)
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/peak3d/inputstream.adaptive.git"
	inherit git-r3
	;;
*)
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/peak3d/inputstream.adaptive/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/inputstream.adaptive-${PV}"
	;;
esac

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	>=media-tv/kodi-9999
	>=media-libs/kodi-platform-9999
	"
RDEPEND="
	${DEPEND}
	"

src_prepare() {
	sed -i -e "s#DECRYPTERPATH \"special://home/cdm\"#DECRYPTERPATH \"/usr/$(get_libdir)/kodi/cdm\"#" CMakeLists.txt

	default
}

src_install() {
	cmake-utils_src_install

	dosym /usr/$(get_libdir)/kodi/addons/inputstream.adaptive/libssd_wv.so /usr/$(get_libdir)/kodi/cdm/libssd_wv.so
}
