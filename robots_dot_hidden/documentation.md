wget -A README -np -r -e robots=off 10.13.100.251/.hidden/
grep -r  -E '.*[0-9]+.*' 10.13.100.251
