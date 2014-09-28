class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.text:firstname
      t.text:lastname
      t.text:address1
      t.text:address2
      t.text:city
      t.text:state
      t.integer:zip
      t.text:phone
      t.text:school
      t.text:gender
      t.text:age

      t.timestamps

    end
  end
end
