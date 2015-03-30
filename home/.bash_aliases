alias pyserver='python manage.py runserver 0.0.0.0:8000'
alias debug='tail -f `git root`/app/tmp/logs/debug.log'
alias error='tail -f `git root`/app/tmp/logs/error.log'
alias cake='`git root`/app/Console/cake'
alias svn='svnwrap svn'
alias grep='grep --color=always'
function instance(){
    echo '<?php ' $(find `git root`/app/Config/dhair/ -name 'dhair_*' ! -name '*ignore.php' -exec grep -P '^\s*[^/].*define.*INSTANCE_ID' {} \;) 'echo INSTANCE_ID;' | php
}

