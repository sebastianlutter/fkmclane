Overlay
=======
This is my portage overlay where I put my modified Gentoo packages or my own packages. Currently this repository contains the following packages:

dwm
---
This package is based on the official Gentoo package, but it downloads the latest git snapshot from my [dwm](https://github.com/fkmclane/dwm) repository. This overlay also includes a package for my own dwmstatus in the dwm repository.

Armagetron Advanced
-------------------
This repository provides ebuilds for [Armagetron Advanced](http://armagetronad.org) versions 0.2.8.3.2 and 0.4. The 0.4 ebuild downloads the latest bzr trunk every time it is run.

Wine (Compholio Patches)
------------------------
This repository also provides an ebuild that builds a version of wine with the compholio patches. This mostly adds support for Silverlight.

Pipelight
---------
Pipelight allows browser plugins in wine to be run in native browsers. This is often used in conjunction with the compholio wine to allow Silverlight natively.
