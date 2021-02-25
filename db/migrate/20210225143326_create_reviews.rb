class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :title
      t.datetime :date
      t.string :position
      t.text :pros
      t.text :cons
      t.integer :rating
      t.boolean :isCurrentlyEmployed
      t.integer :yearsEmployed
      t.integer :isUseful
      t.integer :isNotUseful

      t.timestamps
    end
  end
end
