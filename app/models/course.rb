class Course < ApplicationRecord
  ATTRIBUTES_PARAMS = [:code, :name, :image, :image_cache, :description,
    :content, :status, :start_date, :end_date, user_ids: [],
    subjects_attributes: [:id, :name, :redmine_identifier, :description, :content, :_destroy]]

  mount_uploader :image, ImageUploader

  enum status: [:init, :progress, :finish]

  validate :check_end_date, on: [:create, :update]
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  has_many :subjects, dependent: :destroy
  has_many :user_courses, dependent: :destroy
  has_many :user_subjects, dependent: :destroy
  has_many :users, through: :user_courses, dependent: :destroy

  accepts_nested_attributes_for :subjects,
    reject_if: proc {|attributes| attributes["name"].blank?}, allow_destroy: true

  scope :init_courses, ->{where status: :init}
  scope :progress_courses, ->{where status: :progress}
  scope :finish_courses, ->{where status: :finish}
  scope :active_courses, -> do
    where(status: :init).or(where(status: :progress))
  end

  def check_end_date
    unless self.start_date.nil?
      errors.add :end_date, I18n.t("error.wrong_end_date") if
        self.end_date < self.start_date
    end
  end

  def update_course_and_user_courses status
    self.update_attributes status: status
    user_courses.update_all status: status
    if status == :finish
      user_subjects.update_all status: status
    end
  end

  def course_superusers
    users.superusers
  end

  def course_trainees
    users.trainees
  end
end
