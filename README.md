# dotfiles

Dropbox + github workflow for environment standardization

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
- slog (mesos logger/grepper, run it like so: $ ./slog dw-loan-app prod && vi /tmp/slog.log`
)

### slog
It basically figures out which mesos slave is running the app, then greps `/var/log/messages` for the app name you give as the first arg, and then copies that to your local machine at `/tmp/slog.log`.

Note, if the app is flapping, it’s going to be constantly reassigned to a new slave so you may have to run it a few times if that’s the case.

Anyway, for the loan application etl, if there’s an exception it will log the JSON message that caused the exception.

In the test resources folder for that app, there is an empty file called `adhoc.json`

I paste the JSON into there, then run the integration tests (`$ mvn verify`)
s
Or just run the one test `US_datawarehouse_etl/blob/master/samza_jobs/src/test/java/com/fundingcircle/transaction/AdhocIT.java`


## Helpful commands

Batch renaming of files:
```
for f in *.pdf ; do mv $f $(echo $f | sed -e 's/eStmt_//') ; done
```

See the first n results in a directory: ls -l -t | tail -n 2 | head -2




