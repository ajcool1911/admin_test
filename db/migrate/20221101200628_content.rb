class Content < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :shortdesc
      t.string :longdesc
      t.string :location
      t.string :status
    end 
  end
end
