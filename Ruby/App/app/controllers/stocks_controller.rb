class StocksController < ApplicationController
    def search
        if params[:stock].present?
            @stock = Stock.new_lookup(params[:stock])
            if @stock
                respond_to do |format|
                    format.js { render partial: 'user/result' }
                end
            else
                respond_to do |format|
                    flash.now[:alert] = "Enter a valid symbol to search"
                    format.js { render partial: 'user/result' }
            end
        end
        else
            respond_to do |format|
                flash.now[:alert] = "Enter a symbol to search"
                format.js { render partial: 'user/result' }
             end
        end
    end
  end