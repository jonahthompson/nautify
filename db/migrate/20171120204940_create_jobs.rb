class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.text :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :load
      t.references :user
      
      t.timestamps
    end
  end
end
