class Project < ApplicationRecord
  belongs_to :user
  mount_uploader :preview, PreviewUploader
end
