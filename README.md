# zshHelp

wenn du root rechte hast und eine einfachere durch die Tab Taste bedienbare shell alternative zu bash was debian nutzt, wäre dann zsh zsh Shell

Automatisch:
  cd zshHelp
  chmod +x install-zsh.sh
  ./install-zsh.sh

Manuell:
  apt install -y zsh git curl
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

Hier kannst du dann themes ändern unter:

  nano ~/.zshrc

Speichern: strg + O
schließen: strg +  X
Themes findest du unter:  https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
