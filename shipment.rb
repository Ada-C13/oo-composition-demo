class Shipment

  attr_reader :tracking_number, :order

  def initialize(tracking_number, order)
    @tracking_number = tracking_number
    @order = order
    @order.set_shipment(self)
  end

end