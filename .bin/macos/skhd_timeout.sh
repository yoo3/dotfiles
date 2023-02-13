#/bin/bash


TIME_STAMP_DIR=$HOME/.bin/tmp/skhd_timeout
if [ ! -e some_directory ];
then
  mkdir -p $TIME_STAMP_DIR
fi

TIME_STAMP_FILE=$TIME_STAMP_DIR/timestamp

if [[ "$1" =~ ^[0-9]+$ ]];
then
  echo 'is number'
  touch $TIME_STAMP_FILE
else
  case $1 in
    reset )
      echo 'reset!!'
      touch $TIME_STAMP_FILE
      ;;
    kill )
      echo 'kill!!'
      rm $TIME_STAMP_FILE
      ;;
  esac
fi
