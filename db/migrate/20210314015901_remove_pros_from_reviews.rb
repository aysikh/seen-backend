class RemoveProsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :pros, :text
  end
end
