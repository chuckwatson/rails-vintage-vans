class AddAttributesToCampervans < ActiveRecord::Migration[5.2]
  def change
    add_column :campervans, :model, :string
    add_column :campervans, :year, :string
    add_column :campervans, :fuel_type, :string
  end
end
