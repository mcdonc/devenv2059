{ pkgs, lib, config, inputs, ... }:

{

  scripts.wazzup.exec = ''
    echo "YO wazzup"
  '';

  scripts.hasdevenvlocal.exec = ''
   echo XXX$HAS_DEVENV_LOCALXXX
  '';

  enterShell = ''
    wazzup
  '';

}
