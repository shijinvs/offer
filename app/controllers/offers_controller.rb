class OffersController < ApplicationController
  require 'json'
  def new
  end

  def display

  # respond_to do |format|
  #   format.json { render :json => @offers.to_json (:only => [:title, :validity]) }
  # end


  render json:request.protocol.to_json << request.host_with_port.to_json + 
  Currentoffer.select(:title,:validity,:image).having('validity >= ?', Date.today).to_json

	# Currentoffer.all.each do |offer|
	# 	unless offer.validity >= Date.today
	# 		render json: offer.title.as_json
	# 		render json: request.protocol + request.host_with_port + offer.image.to_json
	# 		render json: offer.validity.as_json

		#render json:request.protocol + request.host_with_port +  Currentoffer.all.to_json
		#render json: request.host + Currentoffer.first.image.path
#
  end

end
