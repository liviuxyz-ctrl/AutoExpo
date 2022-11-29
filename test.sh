#!/usr/bin/env bash
# shellcheck disable=SC2094
truncate -s-7 $PWD/app/babel.config.js
cat $PWD/app/babel.config.js rep.txt >> $PWD/app/babel.config.js

