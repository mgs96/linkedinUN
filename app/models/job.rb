class Job
  include Neo4j::ActiveNode
  id_property :id, auto: :uuid
  property :name, type: String
  property :description, type: String

  has_one :out, :enterprise, type: "APPEARS_IN", model_class: :Enterprise

end
