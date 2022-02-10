class Movie <  ApplicationRecord
    validates :title, presence: true

    def self.titles
        Movie.all.pluck(:title)
    end
end