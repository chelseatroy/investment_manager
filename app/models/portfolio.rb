class Portfolio 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :user, type: :user
  has_many :in, :investments, origin: :portfolio

end
