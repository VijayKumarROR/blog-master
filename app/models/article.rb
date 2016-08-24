class Article < ActiveRecord::Base
has_many :comments, dependent: :destroy
validates_acceptance_of :terms
validates :title, presence: true,
                    length: { minimum: 5 }
end
