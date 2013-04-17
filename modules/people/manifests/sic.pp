class people::sic {


  case $::hostname {
    'deckard': {
	notify { 'Configuring Work Laptop...': }
    }

    default: {}
  }    
}
