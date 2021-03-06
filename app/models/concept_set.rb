class ConceptSet < ActiveRecord::Base
  set_table_name :concept_set
  set_primary_keys :concept_id, :concept_set
  include Openmrs
  belongs_to :concept
  belongs_to :set, :foreign_key => :concept_set
end
