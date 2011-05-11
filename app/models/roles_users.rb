class RolesUsers < ActiveRecord::Base
  belongs_to :villages
  belongs_to :users
end
