# encoding: utf-8

Sequel.migration do
  change do
    add_column :people, :location, :text
  end
end
