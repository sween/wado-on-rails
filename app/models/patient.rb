class Patient < ActiveRecord::Base
set_primary_key "pk"
acts_as_ferret :fields => [ :pat_name ]

end
