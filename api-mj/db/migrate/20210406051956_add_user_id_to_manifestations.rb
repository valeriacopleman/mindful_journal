class AddUserIdToManifestations < ActiveRecord::Migration[6.0]
  def change
    add_column :manifestations, :user_id, :integer
  end
end
