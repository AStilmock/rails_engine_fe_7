class ItemSearch
  def merch_items(id)
    service = ApiService.new
    request = service.merch_items(id)
    @merch_items = request[:data].map do |item|
      Item.new(item)
    end
  end

  def one_item(id)
    service = ApiService.new
    request = service.one_item(id)
    @item = Item.new(request[:data])
  end
end