class UpdateDogAgeToBirthdate < ActiveRecord::Migration[6.1]
  def change
    rename_column :dogs, :age, :birthdate
  end
end
