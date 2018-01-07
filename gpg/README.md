# GPG

## also check out these

- https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b
- https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65
- https://gist.github.com/ankurk91/c4f0e23d76ef868b139f3c28bde057fc

## Common errors
```bash
git commit -Sm 'some commit'
>gpg failed to sign the data fatal: failed to write commit object [Git 2.10.0]

export GPG_TTY=$(tty)
```
-[https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0](https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0)

## Install
```bash
brew install gpg
```
* Generate a new gpg [key](https://help.github.com/articles/generating-a-new-gpg-key/)
```
gpg --gen-key
```

* **List generated key**
```
gpg --list-secret-keys --keyid-format LONG
```
* Above command should return like this
```
/home/username/.gnupg/secring.gpg
-------------------------------
sec   4096R/<COPY_LONG_KEY> 2016-08-11 [expires: 2018-08-11]
uid                          User Name <user.name@email.com>
ssb   4096R/62E5B29EEA7145E 2016-08-11
```
* Note down your key ```COPY_LONG_KEY``` from above

```
gpg --armor --export <PASTE_LONG_KEY_HERE> > gpg-key.txt
```
* **Add this key to GitHub**
* Login to Github and goto profile [settings](https://github.com/settings/keys)

* **Tell git client to auto sign your future commits**
```
gpg --list-keys
```
* Above command should return like this -
```
/home/username/.gnupg/pubring.gpg
-------------------------------
pub   4096R/<COPY_SHORT_KEY> 2016-08-11 [expires: 2018-08-11]
uid                  Your Name <user.name@gmail.com>
sub   4096R/EB61969F 2016-08-11 [expires: 2017-08-11]
```
* Copy the short key from above and use this in command below
```
git config --global user.signingKey <PASTE_SHORT_KEY_HERE>
git config --global commit.gpgsign true
```

### Change your key passphrase
```
gpg --edit-key <PASTE_YOUR_KEY_ID_HERE>
```
At the gpg prompt type:
```
passwd
```
Type in the current passphrase when prompted<br>
Type in the new passphrase twice when prompted<br>
Type:
```
save
```

### Reference Links
* https://help.github.com/categories/gpg/
* http://nishanttotla.com/blog/signing-git-commits-gpg/
* https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work
* https://news.ycombinator.com/item?id=7792026
* https://overflow.no/blog/2016/08/11/signed-commits-with-gpg-git-and-github-on-linux/
* http://stackoverflow.com/questions/10161198/is-there-a-way-to-autosign-commits-in-git-with-a-gpg-key
* http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/gpg-cs.html
* https://help.ubuntu.com/community/GnuPrivacyGuardHowto
* https://medium.com/@timmywil/sign-your-commits-on-github-with-gpg-566f07762a43#.aovevj80y
* https://blog.erincall.com/p/signing-your-git-commits-with-gpg
