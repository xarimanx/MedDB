class CreateSubdivisions < ActiveRecord::Migration
  def change
    create_table :subdivisions do |t|
      t.references :department
      t.string :name
      
      t.timestamps
    end
  end
end
