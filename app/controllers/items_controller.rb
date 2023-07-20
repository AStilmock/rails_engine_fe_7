class ItemsController < ApplicationController
  def index
  end

  def show
    @item = ItemSearch.new.one_item(params[:id])
  end
end