class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
