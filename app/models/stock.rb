class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:access_api_key],
            # publishable_token: 'pk_b***12860e3f42b38e971943***',

            # Instructions: video 257 - Secure Credential - Mashrur Hossain 
            # run: EDITOR="code --wait" rails credentials:edit 
            # save this key inside the https://www.vaultproject.io/
            # https://stackoverflow.com/questions/59993437/can-i-generate-a-new-config-master-key-file
            endpoint: 'https://cloud.iexapis.com/v1'
          )
        client.price(ticker_symbol)
    end
end
