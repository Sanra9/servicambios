class CurrenciesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
        @currencies = Currency.all
        @currencies=@currencies.order(:position)
    end

    def new
        @currency = current_user.currencies.build
    end

    def create
        @currency = current_user.currencies.build(currency_params) 
        if @currency.save
            redirect_to currencies_path, notice: 'Currency added'
        else
            render :new
        end
    end

    def show
        @currency = Currency.find(params[:id])
    end

    def edit
        @currency = Currency.find(params[:id])
    end

    def update
        currency = Currency.find(params[:id])
        if currency.update(currency_params)
            redirect_to currencies_path, notice: 'The currency has been modified success'
        else
            render :edit
        end
    end

    def destroy
        currency = Currency.find(params[:id])
        currency.destroy

        redirect_to currencies_path, notice: 'The currency has been deleted success'
    end

    private
    def currency_params
        params.require(:currency).permit(:name, :price_buy, :price_sale, :available, :country, :position)
    end
end
