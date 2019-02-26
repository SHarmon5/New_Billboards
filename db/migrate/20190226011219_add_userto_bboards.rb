class AddUsertoBboards < ActiveRecord::Migration[5.2]
  def change
    add_reference :bboards, :user, foreign_key: true
  end
end
