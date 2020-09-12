class AddUniqueKeyToArrticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :unique_key, :string
  end
end
