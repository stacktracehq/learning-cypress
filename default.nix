with (import ./nix/packages);
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    entr
    fd
    jq
    nodejs-10_x
    tmux-up
  ];
}
