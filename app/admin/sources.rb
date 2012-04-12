#encoding: UTF-8
ActiveAdmin.register Source do

  menu :label => "Источники", :priority => 2

  form :partial => "form"

  index do
    column :id
    column :title
    column :type
    column :created_at
    column :updated_at
    default_actions
  end
end
