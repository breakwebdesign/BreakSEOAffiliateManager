class Affiliate < ActiveRecord::Base
  
  validates :name, :presence => true, :length => {:minimum => 5}
  validates :url, :presence => true
  
  before_save :downcase_fields

  private
  def downcase_fields
    self.name.downcase! unless self.name.blank?
  end

end
