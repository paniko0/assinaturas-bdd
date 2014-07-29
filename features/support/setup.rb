require "httparty"

$logger = Logger.new("logs/cucumber.log")

Before do
  @client = Client.new
end

class Client
  include HTTParty
  base_uri 'https://sandbox.moip.com.br/assinaturas'

  def customers
    @resp = self.class.get("/v1/customers")

    puts @resp.code

    @resp
  end
end

def last_json
  @client.resp.body
end