#\bin\bash

if [ "$#" == "0" ]
    then
    echo "pass at least 1 parameter"
    exit 1
fi

while (( $# ))
    do
        echo "You gave me $1"
        shift
    done