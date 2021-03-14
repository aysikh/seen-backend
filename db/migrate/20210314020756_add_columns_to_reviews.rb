class AddColumnsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :diversity, :float
    add_column :reviews, :leadership, :float
    add_column :reviews, :worklife, :float
    add_column :reviews, :inclusiveness, :float
    add_column :reviews, :benefits, :float
    add_column :reviews, :recommendation, :float
  end
end
