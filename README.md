# Cypress Training
## General info

* [Cypress Docs](https://docs.cypress.io/)

## Installing it

```sh
git clone git@github.com:stacktracehq/learning-cypress.git
cd learning-cypress
nix-shell
npm i
```

## Running it

### With tmux
```sh
tmux-up tmux-up.conf
```

### Otherwise

All of the commands below (except REPL) watch the project's files and run again if a file changes so it is worth opening them a separate tab / window.

#### Serve

```sh
npm start
```

#### Test

```sh
fd . | entr -cs 'npx elm-test'
```

#### Linting

```sh
fd . | entr -cs 'npx elm-analyse'
```

#### REPL

```sh
npx elm repl
```
