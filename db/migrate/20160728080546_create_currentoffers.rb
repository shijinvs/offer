class CreateCurrentoffers < ActiveRecord::Migration[5.0]
  def change
    create_table :currentoffers do |t|
      t.string :title
      t.string :image
      t.date :validity

      t.timestamps
    end
  end
end
