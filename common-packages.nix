# common packages

{ pkgs }: with pkgs; [
  git
  (vscode-with-extensions.override {
  vscodeExtensions = with vscode-extensions; [
      bbenoist.nix
  ];
  })
  github-desktop
  vivaldi
  discord
]