class Career
  include Neo4j::ActiveNode
  id_property :id, auto: :uuid
  property :name, type: String
  property :description, type: String

end
