# Elm Training

The purpose of this repository is to provide a starting point for running through the [Elmbridge Emoji Translator](https://elmbridge.github.io/curriculum/The%20Elm%20Architecture.html) curriculum. The tutorial uses elm reactor, but this app was created with [create-elm-app](https://github.com/halfzebra/create-elm-app) so there  _may_ be some subtle differences ¯\_(ツ)_/¯.

## General info

* [Packages](https://package.elm-lang.org/)
* [Hoogle like search](https://klaftertief.github.io/elm-search/)
* [Official guide](https://guide.elm-lang.org/)
* [Elm discourse](https://discourse.elm-lang.org/)
* [Repos](https://github.com/elm)

## Installing it

```sh
git clone git@github.com:stacktracehq/elmbridge-emoji-translator.git
cd elmbridge-emoji-translator
nix-shell
npm i
```

## Formatting it

If you use vim and ALE you might like to add the formatter as a fixer

```
let g:ale_fixers = {
\ 'typescript': ['prettier'],
\ 'elixir': ['mix_format'],
\ 'elm': ['format'],
\}
```

## Running it

### With tmux
```sh
tmux-up tmux-up.conf
```

### Otherwise

All of the commands below (except REPL) watch the file a run again if a file changes so it is worth opening them a separate tab / window.

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
