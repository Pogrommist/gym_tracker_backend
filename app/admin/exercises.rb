ActiveAdmin.register Exercise do
  permit_params :name, :description, :video_url, :image_url

  index do
    column :id
    column :name
    column :description
    column :image_url do |column|
      image_tag column.image_url, { width: '200px'}
    end
    column :video_url
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :description
      row :image_url do |column|
        image_tag column.image_url, { width: '200px'}
      end
      row :video_url
      row :created_at
      row :updated_at
    end
  end
  
end
