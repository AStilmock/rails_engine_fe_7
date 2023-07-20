class Merchant
  attr_reader :id, :name
  def initialize(data)
    @id = data[:id].to_i
    @name = data[:attributes][:name]
  end
end