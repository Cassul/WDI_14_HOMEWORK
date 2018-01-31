class Project < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  mount_uploader :preview, PreviewUploader
end
