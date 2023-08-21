# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :bigint
#
class Movie < ApplicationRecord
  belongs_to :client, optional: true

  validates :name, presence: true, length: { maximum: 255 }
  validates :client, presence: true

  def to_s
    self.name
  end
end
