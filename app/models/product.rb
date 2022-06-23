class Product < ApplicationRecord
    mount_uploader :image_url, ImageUrlUploader # Tells rails to use this uploader for this model.    
    validates :name, presence: true
    validates :price, presence: true, numericality: {:greater_than => 0} 
    validates :category_id, presence: true
    validates :store_id, presence: true    
end
