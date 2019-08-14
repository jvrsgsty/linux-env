#!/bin/bash

git config --global user.name jvrsgsty
git config --global user.email jvrsgsty@users.noreply.github.com

git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status

git config --global push.default simple

git config --global branch.autosetuprebase always
git config --global pull.rebase true

git config --global color.ui true
git config --global color.status.modified yellow
git config --global color.status.changed yellow
