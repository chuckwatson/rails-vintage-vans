 class CreateCampervans < ActiveRecord::Migration[5.2]
  def change
    create_table :campervans do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
