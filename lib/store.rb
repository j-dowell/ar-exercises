class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 } 
  validate :apparel
  before_destroy :check

  def check 
    return true if employees.size < 2
    errors.add :base, "Cannot delete"
    throw(:abort)
  end

  def apparel
    if mens_apparel == 'false' || womens_apparel == 'false'
      errors.add(:apparel, "Must carry at least one of one clothing")
    end
  end
end
