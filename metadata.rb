name              'logentriesagent'
maintainer        'Stephen Hipskind'
maintainer_email  'stephen.hipskind@crossfit.com'
license           'Apache 2.0'
description       'Installs and configures the logentries agent'
long_description  'Installs the Logentries python agent and configures it to follow logs specified in a JSON object'
recipe            'logentriesagent::default',   'Downloads the agent and sets up logging'
recipe            'logentriesagent::install',    'Download and install the agent from le repo'
recipe            'logentriesagent::configure', 'Register and le start agent, follow files'
version           '0.2'
source_url        'https://github.com/shipskin/le_chef' if respond_to?(:source_url)
issues_url        'https://github.com/shipskin/le_chef/issues' if respond_to?(:issues_url)

depends 'apt'
depends 'yum'
