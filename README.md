# dotfiles
Dropbox + github workflow for environment standardization

## Vim
### OS X / Terminal.app config
Add these keycodes to the Terminal profile:

    ⇧↑ \033[1;2A
    ⇧↓ \033[1;2B

<img src="./macOS-tools/terminal.app.png" alt="terminal.app">

### disable this
<img src="./macOS-tools/keyboard-shortcuts-disable.png" alt="terminal.app">

### Show keycodes
  - `$ xxd`
  - `$ cat >/dev/null`
  - `$ sed -n l`
  - `$ od -c`
  - `$ vim -> i -> <C-v><key>`

### Show used key mappings
`ack ctrl- | perl -ne 'm/(CTRL-.?)/g; print $1."\n";' | sort| uniq`

## Tmux
###Reverse shell
[in tmux session on local host]

    ssh -p 143 -R 1234:localhost:22 router.

[in tmux session on remote host, prefix is alt+1 + [ for remote copy mode]
[select some text]

    tmux save-buffer - | ssh -p 1234 localhost pbcopy

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

### SSH
#### Send a file from local to remote (if scp isn't working)
    cat ubuntu.deb | ssh -p 43 router. "cat > ~/ubuntu.deb"

#### Send a file from remote to local
    ssh pi1 'cat /tmp/remotefile.conf' > file.conf

#### SCP from local to remote
    scp ubuntu.deb pi1:~/ubuntu.deb

### Clojure
Using the REPL to re-load code:

```clojure
(refresh)
(use '[clojure.tools.namespace.repl :only (refresh)])

(require '[crawlingchaos.domain.document-management.api :as api])

(def loan-name "L18-CA-0021179")

(api/copy-loan-documents-to-capital-provider-folder loan-name)
```

### Docker
#### Create a docker-machine with 192.168.99.100
```bash
docker-machine create --driver "virtualbox" --virtualbox-hostonly-cidr "192.168.99.1/24" default
docker-machine stop default
docker-machine start default
docker-machine regenerate-certs default
VBoxManage controlvm "default" natpf1 "tcp-port8080,tcp,,8080,,8080";
VBoxManage controlvm "default" natpf1 "tcp-port8443,tcp,,8443,,8443";
```

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
    sudo docker rmi --force $(sudo docker images | grep monitoring | awk '{print $3}')

#### Running the container
    sudo docker run -it --rm -e VAULT_TOKEN=$(vault_token_for us_datawarehouse_monitoring) quay.io/fundingcircle/us-datawarehouse-monitoring bash

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
    ssh $(consul members | grep slave | grep alive | awk '{print $1}' | head -n1)

#### Search for if Docker is running correctly on all the mesosslaves
    $ for host in $(consul members | grep mesosslave-private | awk '{print $1}'); do ssh $host -t "sudo docker ps | head -n1"; done

#### Launch Docker container manually
    sudo docker run -it --rm -e VAULT_TOKEN=$(vault_token_for my_app) quay.io/fundingcircle/my_app bash

#### Delete locally cached Docker image (force pull)
    sudo docker rmi --force $(sudo docker images | grep my_app | awk '{print $3}')

#### Find a container
    for s in $(consul members | grep mesosslave-private | grep alive | awk '{print $1}'); do ssh -oStrictHostKeyChecking=no $s "sudo docker ps | grep marketplace-etl"; done

#### Using jstack

#### Locally
```bash
jstack -l $(ps | grep 'java -classpath' | tail -n2 | head -n1 | awk '{print $1}') | grep main
```

#### In Running Container
```bash
ssh bastion
container_id=$(for s in $(consul members | grep mesosslave-private | grep alive | awk '{print $1}'); do ssh -oStrictHostKeyChecking=no $s "sudo docker ps | grep marketplace-etl"; done | awk '{print $1}')
ssh mesosslave-private
sudo docker cp /usr/java/jdk1.8.0_162 $container_id:/
sudo docker exec -it $container_id bash
bash-4.4# ps
PID   USER     TIME   COMMAND
    1 root       0:00 /bin/sh -c /usr/local/deploy/bin/run-job -m jobs.bank-tra
    7 root       0:00 bash /usr/local/deploy/bin/run-job -m jobs.bank-transacti
   10 root       0:01 /usr/bin/envconsul -consul=192.20.0.1:1520 -config /etc/e
   42 root       0:30 java -Duser.timezone=UTC -Xms256m -Xmx2g -XX:MaxMetaspace
   82 root       0:00 bash
   90 root       0:00 ps
bash-4.4# jdk1.8.0_162/bin/jstack
Usage:
    jstack [-l] <pid>
        (to connect to running process)
    jstack -F [-m] [-l] <pid>
        (to connect to a hung process)
    jstack [-m] [-l] <executable> <core>
        (to connect to a core file)
    jstack [-m] [-l] [server_id@]<remote server IP or hostname>
        (to connect to a remote debug server)
bash-4.4# jdk1.8.0_162/bin/jstack -l 42

"main" #1 prio=5 os_prio=0 tid=0x00007f419000a000 nid=0x2b runnable [0x00007f4198e7e000]
   java.lang.Thread.State: RUNNABLE
        at java.net.SocketInputStream.socketRead0(Native Method)
        at java.net.SocketInputStream.socketRead(SocketInputStream.java:116)
        at java.net.SocketInputStream.read(SocketInputStream.java:171)
        at java.net.SocketInputStream.read(SocketInputStream.java:141)
        at org.postgresql.core.VisibleBufferedInputStream.readMore(VisibleBufferedInputStream.java:140)
        at org.postgresql.core.VisibleBufferedInputStream.ensureBytes(VisibleBufferedInputStream.java:109)
        at org.postgresql.core.VisibleBufferedInputStream.read(VisibleBufferedInputStream.java:67)
        at org.postgresql.core.PGStream.receiveChar(PGStream.java:288)
        at org.postgresql.core.v3.ConnectionFactoryImpl.enableSSL(ConnectionFactoryImpl.java:329)
        at org.postgresql.core.v3.ConnectionFactoryImpl.openConnectionImpl(ConnectionFactoryImpl.java:148)
        at org.postgresql.core.ConnectionFactory.openConnection(ConnectionFactory.java:49)
        at org.postgresql.jdbc.PgConnection.<init>(PgConnection.java:194)
        at org.postgresql.Driver.makeConnection(Driver.java:450)
        at org.postgresql.Driver.connect(Driver.java:252)
        at java.sql.DriverManager.getConnection(DriverManager.java:664)
        at java.sql.DriverManager.getConnection(DriverManager.java:208)
        at clojure.java.jdbc$get_connection.invokeStatic(jdbc.clj:255)
        at clojure.java.jdbc$get_connection.invoke(jdbc.clj:176)
        at clojure.java.jdbc$get_connection.invokeStatic(jdbc.clj:239)
        at clojure.java.jdbc$get_connection.invoke(jdbc.clj:176)
        at clojure.java.jdbc$get_connection.invokeStatic(jdbc.clj:242)
        at jobs.bank_transaction_received$_main.invokeStatic(bank_transaction_received.clj:229)
        at jobs.bank_transaction_received$_main.doInvoke(bank_transaction_received.clj:225)
        at clojure.lang.RestFn.invoke(RestFn.java:397)
        at clojure.lang.AFn.applyToHelper(AFn.java:152)
        at clojure.lang.RestFn.applyTo(RestFn.java:132)
        at clojure.lang.Var.applyTo(Var.java:702)
        at clojure.core$apply.invokeStatic(core.clj:657)
        at clojure.main$main_opt.invokeStatic(main.clj:317)
        at clojure.main$main_opt.invoke(main.clj:313)
        at clojure.main$main.invokeStatic(main.clj:424)
        at clojure.main$main.doInvoke(main.clj:387)
        at clojure.lang.RestFn.applyTo(RestFn.java:137)
        at clojure.lang.Var.applyTo(Var.java:702)
```

### Debian VM
Linux is often useful as a build tool. Here are some helpful links to get
started:

- <https://askubuntu.com/questions/539243/how-to-change-visudo-editor-from-nano-to-vim>
- <https://askubuntu.com/questions/192050/how-to-run-sudo-command-with-no-password>
- <https://linuxconfig.org/how-to-install-docker-engine-on-debian-9-stretch-linux>
- <https://stackoverflow.com/questions/5906441/how-to-ssh-to-a-virtualbox-guest-externally-through-a-host>
- <https://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo>
