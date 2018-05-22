class Investment 
  include Neo4j::ActiveNode
  property :number_of_shares, type: Integer
  property :free_float_percentage, type: Float

  has_one :out, :portfolio, type: :portfolio
  has_one :out, :company, type: :company
end
