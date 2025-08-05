{ pkgs, lib, config, inputs, ... }:

let
  deriv = pkgs.writeShellScriptBin "testderiv@@PLACEHOLDER@@" ''
    echo "YO from @@PLACEHOLDER@@"
  '';
in
{

  packages = [ deriv ];

  scripts.wazzup.exec = ''
    echo "YO wazzup"
  '';

  scripts.testderiv@@PLACEHOLDER@@.exec = ''
    testderiv@@PLACEHOLDER@@
  '';
  
  enterShell = ''
    wazzup
  '';

}
