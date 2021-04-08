#!/usr/bin/env bash
. ".dbwebb/inspect-src/kmom.d/functions.bash"

cd me/game || exit

num=$( git rev-list --all --count )
echo "[$ACRONYM] commits=$num"

log=$( git log --pretty=format:"%h - %an, %ar : %s" | head -5 )
echo addNewLine "$log"

req=5
(( $num >= $req ))
doLog $? "Number of commits = $num (>=$req)"