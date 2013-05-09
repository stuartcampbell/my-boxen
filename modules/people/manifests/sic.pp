class people::sic {

  include caffeine
  include macvim
  include vlc

  #if ($::hostname == 'deckard') || )$::hostname == 'waldorf')

  case $::hostname {
    'deckard': {
	  notify { 'Configuring Work Laptop...': }
    package {
     [ 
      'corkscrew',
      'gcc48'
     ]:
    }
    }
    'waldorf' : {
    notify { 'Configuring Work Desktop...':}
    package {
     [
       'corkscrew'
     ]:
    }
    }

    default: {
       include crashplan
    }

  }    

  exec { 'tap-homebrew-versions':
    command => "brew tap homebrew/versions",
    creates => "${homebrew::config::tapsdir}/homebrew-versions",
    before => Package['gcc48']
  }

  # Useful packages
  package {
    [
      'ack',
      'spark',
      'wget',
      'tmux'
    ]:
  }

}
