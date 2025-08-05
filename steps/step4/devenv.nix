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

  scripts.hasdevenvlocal.exec = ''
   echo XXX$HAS_DEVENV_LOCALXXX
  '';

  scripts.testderiv.exec = ''
    testderiv2
  '';
  
  enterShell = ''
    wazzup
  '';

}
