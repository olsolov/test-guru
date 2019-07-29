class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :test_id

      t.timestamps
    end

    change_column_null(:results, :user_id, false)
    change_column_null(:results, :test_id, false)
  end
end
