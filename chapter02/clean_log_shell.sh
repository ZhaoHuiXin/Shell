# !/bin/bash
LOG_DIR=/var/loog
ROOT_UID=0
if [ "$UID" -ne "$ROOT_UID" ]
    then
	echo "must be root to run this script"
	exit 1
fi

cd $LOG_DIR || {
	echo "cannot change to necessary directory"
	exit 1
}

cat /dev/null>messages && {
	echo "logs cleaned up"
	exit 0
}
echo "logs cleaned up fail"
exit 1
