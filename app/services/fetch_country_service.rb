require 'net/http'

class FetchCountryService
  attr_reader :ip
  def initialize(ip)
    @ip = ip
  end

  def perform
    sleep 60
    uri = URI("http://ip-api.com/json/#{ip}")
    response = Net::HTTP.get(uri)
    parse_response = JSON.parse(response)
    satatus = parse_response.dig("status")
    if status == "success"
      parse_response.dig("countryCode").downcase
    else
      'Wonderland'
    end
  rescue
    'Wonderland'
  end
end
