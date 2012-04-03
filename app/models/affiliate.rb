class Affiliate < ActiveRecord::Base
  
  validates :affiliate_name, :presence => true, :length => {:minimum => 5}
  validates :affiliate_url, :presence => true
  
  before_save :downcase_fields

  private
  def downcase_fields
    self.affiliate_name.downcase! unless self.affiliate_name.blank?
  end

  has_many :keyphrases
end
