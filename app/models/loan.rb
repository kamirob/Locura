class Loan < ApplicationRecord
  belongs_to :equipment
  belongs_to :user, :optional => true
  before_create :change_state

  private

  def change_state
    self.equipment.name = "0" 
  end

end
