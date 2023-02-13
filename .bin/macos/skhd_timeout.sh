#/bin/bash


TIME_STAMP_DIR=$HOME/.bin/tmp/skhd_timeout
if [ ! -e $TIME_STAMP_DIR ];
then
  mkdir -p $TIME_STAMP_DIR
fi

TIME_STAMP_FILE=$TIME_STAMP_DIR/timestamp

if [[ "$1" =~ ^[0-9]+$ ]];
then
  if [ $$ -ne $(pgrep -fo "$0") ]; then
    #echo "起動済みです。"
    exit 1
  fi
  #echo 'is number'
  touch $TIME_STAMP_FILE


  while true 
  do

    if [ ! -f $TIME_STAMP_FILE ];
    then
      skhd -k "escape"
      exit 0
    fi

    NOW=$(date "+%s")
    TIME_STAMP=$(date -r $TIME_STAMP_FILE "+%s")

    DIFF=$(($NOW - $TIME_STAMP ))

    echo "$TIME_STAMP - $NOW = $DIFF"

    if (( $DIFF >= $1 ));
    then
      skhd -k "escape"
      rm $TIME_STAMP_FILE
      exit 0
    fi

    sleep 0.5
  done

else
  case $1 in
    reset )
      #echo 'reset!!'
      touch $TIME_STAMP_FILE
      ;;
    kill )
      #echo 'kill!!'
      rm $TIME_STAMP_FILE
      ;;
  esac
fi
