require 'cora'
require 'siri_objects'
require 'net/http'

class SiriProxy::Plugin::Externalip < SiriProxy::Plugin
  listen_for /external ip address/i do |state|
    url = URI.parse('http://ifconfig.me/ip')
    ip = Net::HTTP.get(url)
    humanreadableip = ip.gsub('', ' ').gsub('.', 'dot')
    say "You're external IP is #{ip}", spoken: "You're external IP is #{humanreadableip}"
    request_completed
  end
end
