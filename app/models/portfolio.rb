class Portfolio 
  include Neo4j::ActiveNode
  property :name, type: String

  #Values to Weight this Portfolio
  property :pollution, type: Float
  property :natural_resource_use, type: Float
  property :indigenous_people_relations, type: Float
  property :human_rights, type: Float
  property :community_engagement, type: Float
  property :treats_employees_well, type: Float
  property :transparency, type: Float
  property :supply_chain_treated_well, type: Float
  property :diversity_in_leadership, type: Float
  property :diversity_in_employees, type: Float
  property :diversity_in_contractors, type: Float
  property :product_quality_and_safety, type: Float
  property :offerings_for_disadvantaged_people, type: Float
  property :customer_relations, type: Float
  property :governmental_risks, type: Float

  property :alcohol, type: Float
  property :tobacco, type: Float
  property :gambling, type: Float
  property :firearms, type: Float
  property :military, type: Float
  property :nuclear_power, type: Float

  #Associations
  has_one :out, :user, type: :user
  has_many :in, :investments, origin: :portfolio

end
