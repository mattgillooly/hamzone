require 'json'
require 'rest-client'

class Licenses
  GET_URL = 'https://data.fcc.gov/api/license-view/basicSearch/getLicenses'.freeze

  def get_callsigns(search_value)
    params = { searchValue: search_value, format: 'json' }
    response = RestClient.get GET_URL, params: params

    raise "Invalid response code: #{response.code}" unless response.code == 200

    payload = JSON.parse(response.body)

    case payload['status']
    when 'OK'
      payload['Licenses']['License'].map{|l| l['callsign']}
    when 'Info'
      []
    end
  end
end
