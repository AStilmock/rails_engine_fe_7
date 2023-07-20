class MerchantSearch
  def all_merchants
    service = ApiService.new
    request = service.all_merchants
    @merchants = request[:data].map do |merch|
      Merchant.new(merch)
    end
  end

  def one_merchant(id)
    service = ApiService.new
    request = service.one_merchant(id)
    @merchant = Merchant.new(request[:data])
  end
end