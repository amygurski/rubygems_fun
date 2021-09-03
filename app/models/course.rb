LANGUAGES = LanguageList::COMMON_LANGUAGES.map { |l| l.name }
LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]

class Course < ApplicationRecord
  validates :title, :short_description, :language, :price, :level,  presence: true
  validates :description, presence: true, length: { :minimum => 5 }

  belongs_to :user

  def to_s
    title
  end

  has_rich_text :description

  extend FriendlyId
  friendly_id :title, :use => :slugged

  def self.languages
    LANGUAGES.map { |language| [language, language] }
  end

  def self.levels
    LEVELS.map { |level| [level, level] }
  end
end
