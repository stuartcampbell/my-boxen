class people::sic {

  include caffeine
  include macvim
  include vlc

  case $::hostname {
    'deckard': {
	  notify { 'Configuring Work Laptop...': }
	  # TODO: Other work specific stuff
    package {
     [ 
      'gcc48'
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
