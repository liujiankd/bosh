#!/usr/bin/env bash
#

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash
source $base_dir/lib/prelude_bosh.bash

cd $assets_dir/s3cli
bin/build

mv out/s3 $chroot/var/vcap/bosh/bin/
chmod +x $chroot/var/vcap/bosh/bin/s3
