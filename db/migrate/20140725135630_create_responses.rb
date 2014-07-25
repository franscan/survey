class CreateResponses < ActiveRecord::Migration
  def change
      create_table :responses do |t|
        t.belongs_to :users
        t.belongs_to :options
        t.timestamps
      end
  end
end
