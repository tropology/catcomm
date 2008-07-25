class User < ActiveRecord::Base
  set_table_name "users"
  set_primary_key "ID_User"
  validates_uniqueness_of :email
end