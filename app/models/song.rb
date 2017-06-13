class Song < ApplicationRecord
  belongs_to :artist


#validations
  #name present, minimum 2 characters
  # artist is present and real

  validates :name, presence: true, length: {minimum: 2}

  validates :artist, presence: true
  validates :artist_id, presence: true
  


end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
