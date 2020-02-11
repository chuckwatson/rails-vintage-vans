class AddCampervanToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :campervan, foreign_key: true
  end
end
