class RemoveIsCurrentlyEmployedFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :isCurrentlyEmployed, :boolean
  end
end
