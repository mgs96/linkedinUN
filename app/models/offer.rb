class Offer
  include Neo4j::ActiveNode
  id_property :id, auto: :uuid
  property :contact_name, type: String
  property :contact_phone, type: String
  property :salary, type: Integer

  has_one :out, :job, type: "A_VACANCY_OF", model_class: :Job


end
