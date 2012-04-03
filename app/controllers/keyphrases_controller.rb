class KeyphrasesController < ApplicationController
  def create
    @affiliate = Affiliate.find(params[:affiliate_id])
    @keyphrase = @affiliate.keyphrases.create(params[:keyphrase])
    redirect_to affiliate_path(@affiliate)
  end
end
