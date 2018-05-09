class CreateVisitRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :visit_requests do |t|
      t.datetime :scheduled
      t.string :visitor_name
      t.string :visitor_email
      t.integer :visit_type
      t.boolean :approved

      t.timestamps
    end
  end
end
