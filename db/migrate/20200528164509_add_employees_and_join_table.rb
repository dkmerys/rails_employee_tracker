class AddEmployeesAndJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :division_id
      t.timestamps
    end

    create_table :employees_projects, id: false do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :project, index: true
    end
  end
end
