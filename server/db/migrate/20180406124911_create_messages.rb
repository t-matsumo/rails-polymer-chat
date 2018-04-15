class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :body
      t.belongs_to :room, index: true

      t.timestamps
    end
  end
end
