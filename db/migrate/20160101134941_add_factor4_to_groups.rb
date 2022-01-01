class AddFactor4ToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :factor4, :string
  end
end
