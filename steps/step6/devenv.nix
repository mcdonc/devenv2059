{ pkgs, lib, config, inputs, ... }:

let
  deriv = pkgs.writeShellScriptBin "testderiv4" ''
    echo "YO from testderiv4"
  '';
in
{

  packages = [ deriv ];

  scripts.wazzup.exec = ''
    echo "YO wazzup"
  '';

  scripts.testderiv.exec = ''
    testderiv4
  '';
  
  scripts.hasdevenvlocal.exec = ''
   echo "XXX $HAS_DEVENV_LOCAL XXX"
  '';

  enterShell = ''
    echo "entered shell"
  '';
  
}
