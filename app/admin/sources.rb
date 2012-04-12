ActiveAdmin.register Source do

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
