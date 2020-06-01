ActiveAdmin.register Product do

  permit_params :title, :image_1, :image_2, :image_3, :image_4, :image_5, :price, :is_featured, :collection_date, :description, :is_sold_out

  index do
    selectable_column
    index_column
    column "Main image" do |product|
      image_tag product.image_1.thumb.url, width: "40px"
    end
    column :title
    column :price
    column :is_featured
    column :is_sold_out
    actions
  end

  form do |f|
    f.inputs "Product info" do
      f.input :title
      f.input :price, label: "Price (in cents)"
      f.input :description
      f.input :collection_date
    end

    f.inputs "Filters" do
      f.input :is_featured, label: "Featured on the homepage"
      f.input :is_sold_out, label: "Sold out ?"
    end

    f.inputs "Images" do
      f.input :image_1
      f.input :image_2
      f.input :image_3
      f.input :image_4
      f.input :image_5
    end

    f.actions
  end

end
