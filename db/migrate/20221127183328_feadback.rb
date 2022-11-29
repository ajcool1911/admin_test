class Feadback < ActiveRecord::Migration[7.0]
  def change
    create_table :feadbacks do |t|
      t.string :firstname
      t.string :lastname
      t.string :reviews
      t.string :description
    end 

  end
end
