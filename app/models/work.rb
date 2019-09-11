class Work < ActiveRecord::Base
  include Pagination

  has_attached_file :document, default_url: '', dependent: :destroy, url: "/post_images/:postid/:style/:filename"

  validates_attachment_content_type :document, content_type:
      %w(image/jpg image/jpeg image/png image/gif image/bmp)


  belongs_to :category
end
