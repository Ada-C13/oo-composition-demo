class Order

  attr_reader :id
  attr_accessor :shipment

  def initialize(id, shipment = nil)
    @id = id
    @shipment = shipment
  end

end