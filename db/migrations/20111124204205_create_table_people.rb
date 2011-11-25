# encoding: utf-8

Sequel.migration do
  change do
    create_table :people do
      primary_key :id
      column :name, :text
      column :surname, :text
    end
  end
end
