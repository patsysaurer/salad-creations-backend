class CreateSalads < ActiveRecord::Migration[7.1]
  def change
    create_table :salads do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
