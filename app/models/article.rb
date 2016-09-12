class Article < ApplicationRecord
  belongs_to :category

  validates :title, :email, :price, :body, :category_id,  presence: true

  before_save :generate_key

  def generate_key
    self.key = SecureRandom.urlsafe_base64(8) unless self.key
  end


end
