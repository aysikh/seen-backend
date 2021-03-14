class AddColumnsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :diversity, :float, :default => 0
    add_column :reviews, :leadership, :float, :default => 0
    add_column :reviews, :worklife, :float, :default => 0
    add_column :reviews, :inclusiveness, :float, :default => 0
    add_column :reviews, :benefits, :float, :default => 0
    add_column :reviews, :recommendation, :float, :default => 0
  end
end
