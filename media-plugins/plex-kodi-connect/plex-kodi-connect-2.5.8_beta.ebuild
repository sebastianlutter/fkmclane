# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Combine the frontend media player Kodi with the multimedia backend server Plex"
HOMEPAGE="https://github.com/croneter/PlexKodiConnect"
MY_PV="${PV/_beta/}"
SRC_URI="https://github.com/croneter/PlexKodiConnect/archive/${MY_PV}.zip -> ${P}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86"
IUSE=""

DEPEND="
	>=media-tv/kodi-17.0
	dev-python/requests
	dev-python/defusedxml
"

RDEPEND="
	${DEPEND}
"

S="${WORKDIR}/PlexKodiConnect-${MY_PV}"

src_install() {
	insinto "/usr/share/kodi/addons/plugin.video.plexkodiconnect"
	doins -r "${S}/"*
}

pkg_postinst() {
	einfo 'If you are having problems after updating, reset your'
	einfo 'database in Kodi at "PlexKodiConnect Settings -> Advanced'
	einfo '    -> Partial or Full Reset of Database and PKC"'
	einfo 'then select "Yes" (to reset Kodi database), "Yes" (to delete'
	einfo 'cached artwork), and "No" (to not reset all PKC settings).'
}
