enc(){
	openssl aes-256-cbc -e -in "$1" -out "$1.enc"
	rm -f -- "$1"
	return 0
}

dec(){
	openssl aes-256-cbc -d -in "$1" -out "${1%.enc}"
	rm -f -- "$1"
	return 0
}

create-archive(){
	tar -czvf "${1%/}.tar.gz" "$1"
	rm -rf -- "$1"
	return 0
}

decompress-archive(){
	tar -xzvf "$1"
	rm -f -- "$1"
	return 0
}

rpi(){
	return $(ssh pi@192.168.1.35)
}

archive_dirs(){
	declare -i i=0
	for aFolder in "$1"/*/; do
		base=$(basename "$aFolder")
		tar -czf "$base.tar.gz" "$base"
		rm -rf "$base"
    		i+=1
	done
	echo "Archived $i folders"
	return 0 
}

unarchive_dirs(){
	declare -i i=0
	for aFolder in "$1"/*.tar.gz; do
		base=$(basename "$aFolder")
		tar -xvf "$base"
		rm -rf "$base"
		i+=1
	done
	echo "Unarchived $i fodlers"
	return 0
}