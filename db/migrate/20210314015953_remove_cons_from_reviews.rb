class RemoveConsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :cons, :text
  end
end
