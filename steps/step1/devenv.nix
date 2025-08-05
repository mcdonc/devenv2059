{ pkgs, lib, config, inputs, ... }:

{

  scripts.wazzup.exec = ''
    echo "YO wazzup"
  '';

  enterShell = ''
    wazzup
  '';

}
