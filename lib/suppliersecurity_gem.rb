require 'httparty'
require 'json'

module SupplierSecurity

  class NotFoundException < StandardError; end

  class API
    include HTTParty
    base_uri 'https://suppliersecurity.info/api/v1'

    def initialize(token)
      @options = {
        headers: {
          "Accept" => "application/json",
          "Authorization" => "Bearer #{token}",
          "Content-type" => "application/json"
        }
      }
    end

    def search(product_url)
      body = { product: { url: product_url } }.to_json
      response = self.class.post("/search", @options.merge({ body: body }))

      # Raise a custom exception for a 404 response
      raise NotFoundException, "The product was not found" if response.code == 404

      # Parse the JSON response into a hash
      JSON.parse(response.body)["products"]

    end
  end
end

