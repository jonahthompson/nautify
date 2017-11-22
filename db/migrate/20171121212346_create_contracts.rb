class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :job, foreign_key: true
      t.references :boat, foreign_key: true

      t.timestamps
    end
  end
end
