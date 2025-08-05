{ pkgs, lib, config, inputs, ... }:

let
  deriv = pkgs.writeShellScriptBin "testderiv2" ''
    echo "YO from 2"
  '';
in
{

  packages = [ deriv ];

  scripts.wazzup.exec = ''
    echo "YO wazzup"
  '';

  scripts.testderiv2.exec = ''
    testderiv2
  '';
  
  enterShell = ''
    wazzup
  '';

}
