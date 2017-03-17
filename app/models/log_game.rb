class LogGame < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :opponent, :class_name => 'User', :foreign_key => 'opponent_id'
  validates :opponent_id, presence: true
end
