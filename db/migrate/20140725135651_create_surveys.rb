class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.belongs_to :users
      t.string :survey_name

      t.timestamps
    end
  end
end
