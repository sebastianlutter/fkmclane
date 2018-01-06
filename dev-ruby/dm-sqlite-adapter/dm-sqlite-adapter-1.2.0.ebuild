# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby23"
RUBY_FAKEGEM_TASK_DOC=""

inherit ruby-fakegem

DESCRIPTION="SQLite3 adapter for DataMapper"
HOMEPAGE="https://github.com/datamapper/dm-sqlite-adapter"

LICENSE="MIT"
SLOT=0
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "dev-ruby/dm-do-adapter dev-ruby/do_sqlite3"
