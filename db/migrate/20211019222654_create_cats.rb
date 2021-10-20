class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |c|
      c.string :name
    end 
  end
end
