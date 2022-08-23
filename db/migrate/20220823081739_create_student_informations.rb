# frozen_string_literal: true

class CreateStudentInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :student_informations do |t|
      t.string :name

      t.string :section

      t.string :roll_number

      t.timestamps
    end
  end
end
