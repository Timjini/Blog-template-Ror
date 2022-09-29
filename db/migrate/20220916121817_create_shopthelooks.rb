class CreateShopthelooks < ActiveRecord::Migration[7.0]
  def change
    create_table :shopthelooks do |t|
      t.string :description
      t.string :url
      t.string :url1
      t.string :url2

      t.timestamps
    end
  end
end
