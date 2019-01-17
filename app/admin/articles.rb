ActiveAdmin.register Article do
	permit_params :title,:body , :image 
  	actions :all

	  form :html => { :enctype => "multipart/form-data" }, title: 'Novo Artigo' do |f|
	   f.inputs 'CRIAR NOVO ARTIGO' do
	   	  f.input :title
	   	  f.input :body , :as => :ckeditor 
	      f.input :image, as: :file
		  # columns  do

	    #     column   max_width: "500px", min_width: "500px" do
				 # span "Escolha as imagens referentes aos serviços no site:"
	    #         span link_to "https://www.flaticon.com ", "https://www.flaticon.com", :target => "_blank"
	    #       end
	    #     end
	    #   f.input :price

	    end
	    f.actions
	  end

	  index do
	    selectable_column
	    column :title
	    column :body
	    column "imagem" do |article|
	      image_tag article.image(:thumb)
	    end
	    column :created_at, null: false
	    actions
	  end

end
