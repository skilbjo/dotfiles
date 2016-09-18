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
- [vim](https://github.com/vim/vim)
- [tmux](https://github.com/tmux/tmux)
- [bash](http://www.gnu.org/software/bash)
- [git](https://github.com/git/git)
- [lein](https://github.com/technomancy/leiningen)
- [sublime](https://www.sublimetext.com)

## Custom Scripts
- tm (tmux session chooser)
- login-shell (tmux pbcopy || pbpaste)
- slog (mesos logger/grepper, run it like so: `$ ./slog dw-loan-app prod && vi /tmp/slog.log` || `slog --syslog-tag no-soap-for-you no-soap-for-you/opportunity-to-avro uat && vi /tmp/slog.log`)


## Helpful commands
### Bash
Batch renaming of files: `for f in *.pdf ; do mv $f $(echo $f | sed -e 's/eStmt_//') ; done`

See the first n results in a directory: `ls -l -t | tail -n 2 | head -2`

`for i in {1..7}; do cd ..; done`

### Docker
ssh into a Docker container: `$ docker -u root exec -it <container-id> bash`
create a docker container that can run other docker containers: `docker run --privileged -t -i jpetazzo/dind`
load ddl to docker: `psql -h docker -U postgres -c 'create database dev;' ; psql -h docker -U postgres -d dev -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";' && ./bin/create│ _dw_ddl | psql -h docker -U postgres -d dev`

### Kafka
- Grab data from a kafka topic: `kafka-console-consumer --zookeeper zookeeper.service.consul --topic opportunity-soap-untrusted --from-beginning > opportunitysoap.xml`
- Grab that file locally: `$ scp server:file .`
- Write that to local Docker: `cat opportunity-soap.xml | kafka-console-producer --zookeeper docker:2181 --topic opportunity-soap-untrusted`
- Change retention time: `kafka-configs --zookeeper zookeeper.service.consul:2181 --alter --entity-type topics --entity-name opportunity-updated --add-config retention.ms=3000000000000`

### Git
- Feature branch out of sync with latest remote/master: `git fetch origin ; git rebase origin/master`

### Heroku Force
- docker run -e "SALESFORCE_USER=$SALESFORCE_USER" -e "SALESFORCE_PASSWORD=$SALESFORCE_PASSWORD" quay.io/fundingcircle/heroku-force "select applicant_email__c, decline_codes__c from Opportunity limit 5" | uniq -c | sort


