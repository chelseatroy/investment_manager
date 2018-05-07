class CreateInvestment < Neo4j::Migrations::Base
  def up
    add_constraint :Investment, :uuid
  end

  def down
    drop_constraint :Investment, :uuid
  end
end
