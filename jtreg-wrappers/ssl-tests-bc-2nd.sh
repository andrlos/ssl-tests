#!/bin/sh
# @test
# @bug 6666666
# @summary ssl-test-bc with BouncyCastle provider (BC_2ND configuration)
# @run shell/timeout=1000 ssl-tests-bc-2nd.sh

set -eu
rm -rf build
export JAVA_HOME="${TESTJAVA}"
# KEYSTORE_PKCS12_LEGACY=1 is workaround for issue in BC (will be removed when fixed), see:
# https://github.com/bcgit/bc-java/issues/958
make -C "${TESTSRC:-.}/.." ssl-tests  BUILD_DIR="$PWD/build" TEST_BC_2ND=1 KEYSTORE_PKCS12_LEGACY=1
