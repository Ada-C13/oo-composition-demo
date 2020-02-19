class Order

  attr_reader :id, :shipment

  def initialize(id)
    @id = id
    # This line is actually unnecessary, because Ruby will assume that all variables start as `nil`, but it's ok to be redundant if you'd like
    @shipment = nil
  end

  def set_shipment(shipment)
    @shipment = shipment
  end

end