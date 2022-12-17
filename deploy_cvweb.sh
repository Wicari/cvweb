#!/bin/bash


ME=`/usr/bin/whoami`
HUGO_CACHEDIR="/tmp/hugo_cache_${ME}"
export HUGO_CACHEDIR

cd ~/myrepos/cvweb-hugo
/usr/local/bin/hugo
rsync -avz --delete public/ ~/html/
