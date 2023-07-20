class MerchantsController < ApplicationController
  def index
    @merchants = MerchantSearch.new.all_merchants
  end

  def show
    @merchant = MerchantSearch.new.one_merchant(params[:id])
    @items = ItemSearch.new.merch_items(@merchant.id)
  end
end