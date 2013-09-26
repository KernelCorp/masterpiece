class OffersController < ApplicationController
  def create
    OffersMailer.create(params[:offer]).deliver
    redirect_to :back
  end
end
