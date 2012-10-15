class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :author
      t.string :category
      t.string :image
      t.string :desc

      t.timestamps
    end
  end
end
