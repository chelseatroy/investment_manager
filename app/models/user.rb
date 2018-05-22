class User
  include ActiveModel::SecurePassword
  include Neo4j::ActiveNode
  property :name, type: String
  property :email, type: String
  property :password_digest, type: String

  has_secure_password

  has_many :in, :portfolios, origin: :user

end
