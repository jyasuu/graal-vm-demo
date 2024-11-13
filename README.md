# graal-vm-demo

[![asciicast](https://asciinema.org/a/eOaaBnWWdSVGZixahHCaUWVWj.svg)](https://asciinema.org/a/eOaaBnWWdSVGZixahHCaUWVWj)

```sh
sdk install springboot

spring init --build=maven --java-version=17 --artifact-id demo-shell --boot-version 3.2.2 --dependencies=native,spring-shell --group-id org.jyasu.shell --packaging=jar 

docker run ghcr.io/jyasuu/graal-vm-demo:nightly

sudo apt install asciinema

asciinema rec demo.cast

asciinema play demo.cast

asciinema upload demo.cast

npm install -g svg-term-cli

cat demo.cast | svg-term --window --no-cursor --no-optimize  --out example.svg

svg-term --cast=eOaaBnWWdSVGZixahHCaUWVWj --out example.svg --window --from=1000 --to=3000

```

