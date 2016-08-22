# dotfiles

Dropbox + github workflow for environment standardization

## Vim
### OS X / Terminal.app config
Add these keycodes to the Terminal profile:

	⇧↑ \033[1;2A
	⇧↓ \033[1;2B

### Show keycodes

- $ xxd
- $ cat >/dev/null 
- $ sed -n l
- $ od -c
- $ vim -> i -> <C-v><key>

### Show used key mappings
`ack ctrl- | perl -ne 'm/(CTRL-.?)/g; print $1."\n";' | sort| uniq`

## Linked programs
- vim
- tmux
- bash
- git
- lein
- sublime

## Custom Scripts
- tm (tmux session chooser)
- login-shell (tmux pbcopy || pbpaste)
- slog (mesos logger/grepper, run it like so: `$ ./slog dw-loan-app prod && vi /tmp/slog.log` || `slog --syslog-tag no-soap-for-you no-soap-for-you/opportunity-to-avro uat && vi /tmp/slog.log`)


## Helpful commands
### Bash
Batch renaming of files: `for f in *.pdf ; do mv $f $(echo $f | sed -e 's/eStmt_//') ; done`

See the first n results in a directory: `ls -l -t | tail -n 2 | head -2`

for i in {1..7}; do cd ..; done

### Docker
ssh into a Docker container: `$ docker -u root exec -it <container-id> bash`

### Kafka
Grab data from a kafka topic: `kafka-console-consumer --zookeeper zookeeper.service.consul --topic opportunity-soap-untrusted --from-beginning > opportunitysoap.xml`
Grab that file locally: `$ scp server:file .`
Write that to local Docker: `cat opportunity-soap.xml | kafka-console-producer --zookeeper docker:2181 --topic opportunity-soap-untrusted`
Change retention time: `kafka-configs --zookeeper zookeeper.service.consul:2181 --alter --entity-type topics --entity-name opportunity-updated --add-config retention.ms=3000000000000`


