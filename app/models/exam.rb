class Exam < ActiveRecord::Base
  belongs_to :course
  has_many :study_materials, dependent: :destroy

  # Unique on all columns at the same time
  validates_uniqueness_of :course, scope: [:year, :semester, :number]
  validates_presence_of :year, :semester, :number, :course
  validates :year, inclusion: {in: 1990..(Time.new.year)}
  validates :number, inclusion: {in: 1..4}

  default_scope { order("number ASC, year DESC, semester DESC") }

  def p
    'P' + self.number.to_s
  end

  def summary
    "#{self.course.abbreviation}-#{self.year}-#{self.semester}-#{self.p}"
  end

  def year_semester
    "#{self.year}-#{self.semester}"
  end
end
