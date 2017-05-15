ActiveAdmin.register UserCourseEvaluation do
  menu parent: I18n.t("active_admin.evaluation")

  permit_params UserCourseEvaluation::ATTRIBUTES_PARAMS

  actions :all, except: [:new, :create, :destroy]

  #index
  config.batch_actions = false

  index do
    column :course {|user_course_evaluation| user_course_evaluation.user_course.course}
    column :user {|user_course_evaluation| user_course_evaluation.user_course.user}
    column :total_point
    column :updated_at
    actions
  end

  filter :user_course_course_code_cont, label: I18n.t("active_admin.course_code")
  filter :user_course_course_name_cont, label: I18n.t("active_admin.course_name")
  filter :user_course_user_name_cont, label: I18n.t("active_admin.trainee_name")
  filter :total_point
  filter :updated_at

  #edit
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :content, as: :ckeditor
      f.has_many :evaluation_items, allow_destroy: true do |i|
        if i.object.new_record?
          i.input :name
          i.input :point
        else
          i.input :evaluation_criterium
          i.input :point, hint: I18n.t("active_admin.max_point_hint",
            max_point: i.object.evaluation_criterium.max_point)
        end
      end
    end
    f.actions
  end
end
