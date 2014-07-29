require "httparty"

$logger = Logger.new("logs/cucumber.log")

Before do
  @client = Client.new
end

class Client
  include HTTParty
  base_uri 'https://sandbox.moip.com.br/assinaturas'

  attr_reader :resp

  def customers
    @resp = self.class.get("/v1/customers", headers: { "Authorization"=> "Basic U0dQQTBLMFI3TzBJVkxSUE9WTEpES0FXWUJPMURaRjM6UVVKRVNHTTlKVTE3NU9HWFJGUkpJWU0wU0lGT01JRlVZQ0JXSDlXQQ=="} )
    @resp
  end
end

def last_json
  @client.resp.body
end