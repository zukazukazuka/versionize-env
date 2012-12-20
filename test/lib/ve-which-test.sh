#! /bin/sh

testResolveLocal()
{
    result=exec "$VE_BASE_DIR/lib/ve-which" "fake"
}

oneTimeSetUp()
{
    local cwd=$(cd $(dirname $0) && pwd)
    export VE_BASE_DIR=$(cd $(dirname "$cwd/../../..") && pwd)
    export FIXTURE_DIR="$cwd/ve-which-test-fixture"
}

. ../shunit2/src/shunit2

