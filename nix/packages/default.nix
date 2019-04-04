let
  overlay = self: super: {
    tmux-up = self.callPackage ./tmux-up {};
  };
in
import (
  builtins.fetchTarball {
    url = https://releases.nixos.org/nixos/unstable/nixos-19.03pre169108.36f31600749/nixexprs.tar.xz;
  }
) {
  overlays = [overlay];
}
