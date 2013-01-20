class CreateTestStoreusers < ActiveRecord::Migration
  def change
    create_table :test_storeusers do |t|
      
      #テーブルの編集
      t.string :user

      t.timestamps
    end
  end
end
