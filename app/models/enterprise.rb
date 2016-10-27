class Enterprise
  include Neo4j::ActiveNode
  id_property :id, auto: :uuid
  property :name, type: String



end
