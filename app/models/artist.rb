class Artist < ApplicationRecord
  belongs_to :genre
  has_many :songs

  # validations
    # has a name - present, unique
       

  validates :name, presence: true, uniqueness: true

    # genre id
      #present 
    # genre actually exists

  validates :genre_id, presence: true

  validates :genre, presence: true



end

# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#
