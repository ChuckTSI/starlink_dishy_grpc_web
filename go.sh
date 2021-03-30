#/bin/bash
# Maiden Voyage was 2018. Hence the port number.

ker=$1

docker build -t dishyv1 .

if [ "$ker" != "dev" ]; then
	echo "PRD"
	docker run --privileged -p 2018:80 -t -i dishyv1
	exit
else
	echo "DEV"
	docker run --privileged -p 2018:80 -t -i dishyv1 /bin/bash
	exit
fi

#if [[ -z $1 ]]



