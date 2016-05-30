class PaymentsController < ApplicationController
  def new
    @client_token = BrainTree::ClientToken.generate
  end

  def create
  end
end
