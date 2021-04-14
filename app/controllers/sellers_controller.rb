class SellersController < ApplicationController
    def index 
        @sellers = Seller.all

        render json: @sellers
    end

    def show
        @seller = Seller.find(params[:id])

        render json: @seller
    end
end
