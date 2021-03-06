class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :only_integer => true, :greater_than_or_equal_to => 40 } 
  validates :hourly_rate, :numericality => { :only_integer => true, :less_than_or_equal_to => 200 } 
  after_create :create_password

  private 
    def create_password
      self.password = ('a'..'z').to_a.shuffle[0,8].join
    end



end

