class CreatePortfolio < Neo4j::Migrations::Base
  def up
    add_constraint :Portfolio, :uuid
  end

  def down
    drop_constraint :Portfolio, :uuid
  end
end
