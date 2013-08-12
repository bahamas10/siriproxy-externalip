require 'cora'
require 'siri_objects'
require 'net/http'

class SiriProxy::Plugin::ExternalIP < SiriProxy::Plugin
  listen_for /external ip address/i do |state|
    url = URI.parse('http://ifconfig.me/ip')
    ip = Net::HTTP.get(url)
    humanreadableip = ip.gsub('', ' ').gsub('.', 'dot')
    say "Your external IP address is #{ip}", spoken: "Your external IP address is #{humanreadableip}"
    request_completed
  end
end
