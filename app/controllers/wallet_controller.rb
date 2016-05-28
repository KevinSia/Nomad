class WalletController < ApplicationController

  def wallet
    @payment = Payment.where(user_id: current_user.id)

  end


end