class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
    end
  end
end

