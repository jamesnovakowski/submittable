class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :city
      t.string :state
      t.integer :age
      t.boolean :permission
      t.integer :permission_type
      t.string :submission_type
      t.string :theme
      t.string :title
      t.string :p_name_minor
      t.integer :p_age_minor
      t.string :p_gender_of_minor
      t.string :p_city
      t.string :p_state
      t.string :p_name_parent
      t.boolean :p_permission
      t.integer :p_permission_type

      t.timestamps
    end
  end
end
