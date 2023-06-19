class CreateApiV1HeatlthServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :description
      t.float :price
      t.date :service_date
      t.string :doctor_name
      t.binary :image_data

      t.timestamps
    end
  end
end
