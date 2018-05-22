class Company
  include Neo4j::ActiveNode

  has_many :in, :investments, origin: :company
end
