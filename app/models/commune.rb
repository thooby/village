class Commune < ActiveRecord::Base
  has_many :patients
  has_many :villages
  validates :name, :presence => true
end
