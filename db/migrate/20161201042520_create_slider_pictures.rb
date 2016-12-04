class CreateSliderPictures < ActiveRecord::Migration[5.0]
  def change
    create_table :slider_pictures do |t|
      t.references :website, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
