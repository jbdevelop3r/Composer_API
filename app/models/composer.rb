class Composer < ApplicationRecord
    has_many :songs
    has_many :albums
end
 