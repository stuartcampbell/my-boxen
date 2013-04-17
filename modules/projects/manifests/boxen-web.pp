        class projects::boxes-web {
            boxen::project { 'boxen-web' :
                nginnx => true,
                postgresql => true,
                ruby => '1.9.3',
                source => 'boxen/boxen-web'
            }
        }
