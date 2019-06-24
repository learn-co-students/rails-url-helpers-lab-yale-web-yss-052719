class AddActiveToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, default: false
  end
end

# has an active attribute that defaults to false 
