class people::sic {


  case $::hostname {
    'deckard': {
      include projects::boxen-web
    }

    default: {}
  }    
}
