class AddPublisher < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publisher, :string
  end
end
