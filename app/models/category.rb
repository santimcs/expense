class Category < ActiveRecord::Base
  belongs_to :group
  default_scope { order("sequence ASC")}
end
