cd "API"
node app.js &
sleep 10
curl 'http://localhost:8080/compile' -H 'Accept: */*' --compressed -H 'Accept-Language: en-US,en;q=0.5' -H 'Connection: keep-alive' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Host: localhost:8080' -H 'Referer: http://localhost:8080/' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0' -H 'X-Requested-With: XMLHttpRequest' --data "language=0&code=print+'Hello!'&stdin=++++++++hello++++"
kill -9 $!
exit


