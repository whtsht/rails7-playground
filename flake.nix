{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      supportSystems = [
        "aarch64-darwin" # 64-bit ARM macOS
        "aarch64-linux"  # 64-bit ARM Linux
        "x86_64-darwin"  # 64-bit x86 macOS
        "x86_64-linux"   # 64-bit x86 Linux
      ];
      forAllSystems = nixpkgs.lib.genAttrs supportSystems;
    in
    {
      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              ruby
              pkg-config
              libyaml
              postgresql
              chromedriver
            ];
            shellHook = ''
            '';
          };
        }
      );
    };
}
