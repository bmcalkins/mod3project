class ListingsController < ApplicationController
    def index 
        @listings = Listing.all

        render json: @listings
    end

    def show
        @listing = Listing.find(params[:id])

        render json: @listing, include: [:seller]
    end

    def create 
        @listing = Listing.create(
            product_type: params([:product_type]),
            product_name: params([:product_name]),
            img_url: params([:img_url]),
            price: params([:price]),
            quantity: params([:quantity]),
            location: params([:location])

        )
        render json: @listing 
    end 

end
