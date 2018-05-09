class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.datetime :scheduled
      t.references :user, foreign_key: true
      t.string :visitor_name
      t.string :visitor_email
      t.integer :visit_type

      t.timestamps
    end
  end
end
