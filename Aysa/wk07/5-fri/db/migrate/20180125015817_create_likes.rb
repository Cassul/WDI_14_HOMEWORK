class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.user :references
      t.project :references

      t.timestamps
    end
  end
end
