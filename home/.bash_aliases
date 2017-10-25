#!/bin/sh -e
alias pyserver='python -m SimpleHTTPServer 8000'
alias debug='tail -f --follow=name --retry `git root`/app/tmp/logs/debug.log'
alias error='tail -f --follow=name --retry `git root`/app/tmp/logs/error.log'
alias cake='`git root`/app/Console/cake'
alias svn='svnwrap svn'
alias grep='grep --color=always'
alias docker_wipe='docker kill $(docker ps -a -q); docker rm $(docker ps -a -q); docker rmi --force $(docker images -q); docker volume rm $(docker volume ls -q)'
alias recreate_testdb='sudo -u postgres dropdb portal_unit_tests && sudo -u postgres createdb portal_unit_tests --owner test_user'
function instance(){
    echo '<?php ' $(find `git root`/app/Config/dhair/ -name 'dhair_*' ! -name '*ignore.php' -exec grep -P '^\s*[^/].*define.*INSTANCE_ID' {} \;) 'echo INSTANCE_ID;' | php
}

