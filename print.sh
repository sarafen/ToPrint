#!/bin/sh


DATE_STAMP=$(date +"%a - %b %d, %Y")
CLEAN_DATE_STAMP=$(date +"%a_%b_%d_%Y")

cp $TODO_DIR/todo.txt  $TODO_DIR/print.txt

sed -i.bak '/^$/d' $TODO_DIR/print.txt

sed -i.bak 's/^/\[ \] /' $TODO_DIR/print.txt

sed -e '1i\
	# '"$DATE_STAMP"'\
	\
	' $TODO_DIR/print.txt > $TODO_DIR/print.txt.tmp
	mv $TODO_DIR/print.txt.tmp $TODO_DIR/dailys/$CLEAN_DATE_STAMP.txt

echo "Ready to Print"
echo $DATE_STAMP