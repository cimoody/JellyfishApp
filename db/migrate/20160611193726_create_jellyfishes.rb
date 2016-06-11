class CreateJellyfishes < ActiveRecord::Migration
  def change
    create_table  :jellyfishes do |t|
    	t.string  :name
    	t.float   :age
    	t.string  :kind
    	t.boolean :poisonous

      t.timestamps null: false
    end
  end
end
