class CreateMisfortunes < ActiveRecord::Migration
  def change
    create_table :misfortunes do |t|
      t.string :misfortune

      t.timestamps
    end
  end
end
