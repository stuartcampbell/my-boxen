class people::sic {

  include caffeine
  include macvim
  include vlc

  case $::hostname {
    'deckard': {
	  notify { 'Configuring Work Laptop...': }
	  # TODO: Other work specific stuff
    }

    default: {
       include crashplan
    }


  # Useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar',
      'spark',
      'wget',
      'tmux'
    ]:
  }

  }    
}
