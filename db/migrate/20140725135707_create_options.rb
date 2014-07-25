class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.belongs_to :questions
      t.string :choice
    end
  end
end
