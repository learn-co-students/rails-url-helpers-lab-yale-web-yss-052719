<<<<<<< HEAD
class AddActiveToStudents < ActiveRecord::Migration
    def change
      add_column :students, :active, :boolean, default: false, null: false
    end
  end
  
=======
class AddActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, default: false, null: false
  end
end
>>>>>>> 6a4742ae11058245aeadd2fd9a235e399a445c7c
