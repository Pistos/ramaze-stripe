require 'ramaze'
require 'stripe'
require 'yaml'

require_relative 'controller/main'

$config = YAML.load(File.read("#{__dir__}/config.yaml"))

Stripe.api_key = $config['stripe']['secret_key']
puts $config['stripe']['publishable_key'].inspect

Ramaze.start port: 5005
