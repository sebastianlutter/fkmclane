# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby22 ruby23"
#RUBY_FAKEGEM_RECIPE_TEST="rspec3"
RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_BINWRAP=""

inherit ruby-fakegem

DESCRIPTION="Rex library for parsing offline registry files from a Windows machine"
HOMEPAGE="https://rubygems.org/gems/rex-registry"

LICENSE="BSD"

SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

# doesn't seem to actually run any tests
RESTRICT=test
