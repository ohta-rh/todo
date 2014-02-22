class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :end_on
      t.boolean :done

      t.timestamps
    end
  end
end
