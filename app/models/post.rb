class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
  
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  validates :image, presence: true
end
