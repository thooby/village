class Patient < ActiveRecord::Base
  belongs_to :commune
  belongs_to :village
  validates :name, :presence => true
end
