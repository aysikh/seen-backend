class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :size
      t.string :location
      t.string :industry
      t.integer :rating, :default => 0

      t.timestamps
    end
  end
end
