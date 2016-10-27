class User
  include Neo4j::ActiveNode
  id_property :id, auto: :uuid
  property :user_name, type: String, constraint: :unique
  property :password, type: String
  property :first_name, type: String
  property :last_name, type: String
  property :email, type: String
  property :semester, type: Integer

  has_many :out, :careers, type: "HAS_STUDIED", model_class: :Career
  has_many :out, :jobs, type: "HAD_OR_IS_WORKING_IN", model_class: :Job
  has_many :both, :friends, type: "IS_FRIEND_OF", model_class: :User

end
