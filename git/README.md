# Sign commits with GPG key

## Install software
```sh
brew install gpg2 gnupg pinentry-mac
```

## Make the directory
```sh
mkdir ~/.gnupg
```

## This tells gpg to use the gpg-agent
```sh
echo 'use-agent' > ~/.gnupg/gpg.conf
```

## Restart your Terminal or source your ~/.*rc file
```sh
source ~/.zshrc
```

## Update the Permissions on your ~/.gnupg Directory
```sh
chmod 700 ~/.gnupg
```
