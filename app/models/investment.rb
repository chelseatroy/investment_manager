class Investment 
  include Neo4j::ActiveNode
  property :number_of_shares, type: Integer
  property :free_float_percentage, type: Float

  property :cancelled, type: Boolean, default: false
  property :cancellation_reason, type: String

  has_one :out, :portfolio, type: :portfolio
  has_one :out, :company, type: :company

  validates :number_of_shares, numericality: { only_integer: true }
end
