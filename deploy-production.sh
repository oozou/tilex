#!/usr/bin/env sh

ssh slack_bot@til.oozou.com << EOF
  cd /var/www/til.oozou.com/
  echo "updating repository ✓" && \
  GIT_SSH_COMMAND='ssh -i /home/slack_bot/.ssh/til' git fetch --all > /dev/null 2>&1 && \
  GIT_SSH_COMMAND='ssh -i /home/slack_bot/.ssh/til' git reset --hard origin/master > /dev/null 2>&1
  echo "restarting the server ✓" && pm2 restart til > /dev/null 2>&1
EOF
