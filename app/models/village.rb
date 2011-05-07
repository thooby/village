class Village < ActiveRecord::Base
  has_many :patients
end
