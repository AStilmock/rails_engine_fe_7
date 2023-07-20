class ApiService
  def conn
    Faraday.new(url: "http://127.0.0.1:3000")
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def all_merchants
    get_url("/api/v1/merchants")
  end
  
  def one_merchant(id)
    get_url("/api/v1/merchants/#{id}")
  end

  def merch_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end

  def one_item(id)
    get_url("/api/v1/items/#{id}")
  end
end