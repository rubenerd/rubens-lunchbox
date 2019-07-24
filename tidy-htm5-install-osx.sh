#!/bin/sh

set -e

destination="/opt"

brew install cmake
cd ${destination}/src
git clone git@github.com:htacg/tidy-html5.git
cd tidy-htm5/build/cmake
cmake ../.. -DCMAKE_INSTALL_PREFIX=${destination}
make install clean
