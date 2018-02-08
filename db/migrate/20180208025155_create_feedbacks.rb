class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :ratable_id
      t.string :ratable_type
      t.integer :rating
      t.string :comment

      t.timestamps
    end
    add_index :feedbacks, [:ratable_type, :ratable_id]
  end
end
