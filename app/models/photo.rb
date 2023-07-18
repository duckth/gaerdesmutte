class Photo < ApplicationRecord
  belongs_to :species
  has_one_attached :blob

  def blob_width
    blob.metadata["width"]
  end

  def blob_height
    blob.metadata["height"]
  end
end
