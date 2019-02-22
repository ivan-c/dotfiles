alias pyserver='python -m SimpleHTTPServer 8000'
alias debug='tail -f --follow=name --retry `git root`/app/tmp/logs/debug.log'
alias error='tail -f --follow=name --retry `git root`/app/tmp/logs/error.log'
alias cake='`git root`/app/Console/cake'
alias svn='svnwrap svn'
alias grep='grep --color=always'
alias docker_wipe='docker kill $(docker ps -a -q); docker rm $(docker ps -a -q); docker rmi --force $(docker images -q); docker volume rm $(docker volume ls -q)'
alias recreate_testdb='sudo -u postgres dropdb portal_unit_tests && sudo -u postgres createdb portal_unit_tests --owner test_user'

# use sudo based on `docker` group membership
if ! id --name --groups "$USER" | grep --quiet --word-regexp "docker"; then
    alias docker='sudo docker'
    alias docker-compose='sudo docker-compose'
fi
alias dc='docker-compose'
