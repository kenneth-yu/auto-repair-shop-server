class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :quote
      t.string :job_name
      t.string :notes
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
