{ pkgs, ... }: {
  channel = "stable-23.11";

  packages = [
    pkgs.nodejs_21
    pkgs.rustfmt
    pkgs.rustup
    pkgs.stdenv.cc
  ];

  # Sets environment variables in the workspace
  env = {
    RUST_SRC_PATH = "${pkgs.rustPlatform.rustLibSrc}";
  };

  idx = {
    extensions = [
      "rust-lang.rust-analyzer"
      "tamasfe.even-better-toml"
      "serayuzgur.crates"
      "vadimcn.vscode-lldb"
    ];

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
      };
      # Runs when the workspace is (re)started
      onStart = {
      };
    };
  };
}
