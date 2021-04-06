class CreateManifestations < ActiveRecord::Migration[6.0]
  def change
    create_table :manifestations do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
