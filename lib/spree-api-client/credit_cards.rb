module Spree
  module API
    class Client
      module CreditCards
        def credit_card(id, options={})
          get("credit_cards/#{id}", options)
        end

        def credit_cards(options={})
          get('credit_cards', options)["credit_cards"]
        end

        #NOTE- requires ID of already existing Spree::CreditCard
        def authorize_credit_card(options={})
          post('credit_cards/authorize', options)
        end
      end
    end
  end
end