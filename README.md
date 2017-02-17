# dotfiles
Dropbox + github workflow for environment standardization

## Vim
### OS X / Terminal.app config
Add these keycodes to the Terminal profile:
    ⇧↑ \033[1;2A
    ⇧↓ \033[1;2B

### Show keycodes
  - `$ xxd`
  - `$ cat >/dev/null`
  - `$ sed -n l`
  - `$ od -c`
  - `$ vim -> i -> <C-v><key>`

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
- `tm` (tmux session chooser)
- `login-shell` (tmux pbcopy || pbpaste)
- `slog` (mesos logger/grepper)

### Slog
Run it like so:
    $ ./slog dw-loan-app prod && vi /tmp/slog.log
or, with a `--syslog` tag:
    $ ./slog --syslog-tag no-soap-for-you no-soap-for-you/opportunity-to-avro uat && vi /tmp/slog.log

## Helpful commands
### Bash
#### Batch renaming of files
    for f in *.pdf ; do mv $f $(echo $f | sed -e 's/eStmt_//') ; done

#### See the first n results in a directory
    ls -l -t | tail -n 2 | head -2
    for i in {1..7}; do cd ..; done

#### Searching for words in code
    grep -rn my_search_dir -e my_search_term

#### Searching for folders named [search term]
    find / -type d -name '*openvpn*' -print

### Linux
#### (Debian/CentOS/Ubunto/macOS) See currently running jobs/threads
    ps -eo size,pid,user,command --sort -size | awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=2 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }'

#### (Alpine) See currently running jobs/threads
    ps -o pid,user,rss,comm,args

### Docker
#### SSH into a Docker container
    $ docker -u root exec -it <container-id> bash

or

    $ docker exec -it [container_id] bash [or sh]

#### Create a docker container that can run other docker containers (docker-in-docker)
    docker run --privileged -t -i jpetazzo/dind

#### load ddl to docker:
    psql -h docker -U postgres -c 'create database dev;' ; psql -h docker -U postgres -d dev -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";' && ./bin/create│ _dw_ddl | psql -h docker -U postgres -d dev

#### Increase RAM/memory of docker-machine
    docker-machine stop
    VBoxManage modifyvm default --cpus 2
    VBoxManage modifyvm default --memory 4096
    docker-machine start

#### Helpful commands when testing on UAT
    sudo docker rmi --force $(sudo docker images | grep intuit | awk '{print $3}')

#### Running the container
    sudo docker run -it --rm -e VAULT_TOKEN=$(vault_token_for us_data_monitoring) quay.io/fundingcircle/us-data-monitoring bash

### Kafka
#### Grab data from a kafka topic:
    $ kafka-console-consumer --zookeeper zookeeper.service.consul --topic opportunity-soap-untrusted --from-beginning > opportunitysoap.xml

#### Grab that file locally:
    $ scp server:file .

#### Write that to local Docker:
    $ cat opportunity-soap.xml | kafka-console-producer --zookeeper docker:2181 --topic opportunity-soap-untrusted

#### Change retention time:
    $ kafka-configs --zookeeper zookeeper.service.consul:2181 --alter --entity-type topics --entity-name opportunity-updated --add-config retention.ms=3000000000000

#### Delete a zombie topic w/ Zookeeper
    ssh zookeeper-3
    /opt/mesosphere/zookeeper/bin/zkCli.sh
    rmr /brokers/topics/dnb-joined-file-prepped-pre-release-1

### Git
#### Feature branch out of sync with latest remote/master:
    $ git fetch origin ; git rebase origin/master

### Heroku Force
#### Run Heroku Force
    $ docker run -e "SALESFORCE_USER=$SALESFORCE_USER" -e "SALESFORCE_PASSWORD=$SALESFORCE_PASSWORD" quay.io/fundingcircle/heroku-force "select applicant_email__c, decline_codes__c from Opportunity limit 5" | uniq -c | sort

### UAT / Staging / Prod Mesos environments

#### Gimme a mesosslave
    consul members | grep mesosslave | awk '{print $1}' | head -n1 | xargs ssh

#### Search for if Docker is running correctly on all the mesosslaves
    $ for host in $(consul members | grep mesosslave-private | awk '{print $1}'); do ssh $host -t "sudo docker ps | head -n1"; done

#### Launch Docker container manually
    sudo docker run -it --rm -e VAULT_TOKEN=$(vault_token_for my_app) quay.io/fundingcircle/my_app bash

#### Delete locally cached Docker image (force pull)
    sudo docker images | awk
