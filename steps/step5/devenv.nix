{ pkgs, lib, config, inputs, ... }:

let
  deriv = pkgs.writeShellScriptBin "testderiv3" ''
    echo "YO from testderiv3"
  '';
in
{

  packages = [ deriv ];

  scripts.wazzup.exec = ''
    echo "YO wazzup"
  '';

  scripts.testderiv.exec = ''
    testderiv3
  '';
  
  enterShell = ''
    wazzup
  '';

}
