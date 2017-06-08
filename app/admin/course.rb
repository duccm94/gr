ActiveAdmin.register Course do
  menu priority: 3
  permit_params Course::ATTRIBUTES_PARAMS

  #index
  scope :all
  scope :init_courses
  scope :progress_courses
  scope :finish_courses

  config.batch_actions = false

  config.sort_order = "status_asc"

  index do
    id_column
    column :code
    column :name
    column :status {|course| status_tag course.status}
    column :start_date
    column :end_date
    column :created_at
    actions
  end

  filter :code_cont, label: I18n.t("active_admin.code")
  filter :name_cont, label: I18n.t("active_admin.name")
  filter :status, as: :select, collection: Course.statuses
  filter :start_date
  filter :end_date
  filter :created_at

  #show
  show do
    attributes_table do
      row :id
      row :code
      row :name
      row :image {course.image.file.filename if course.image?}
      row :image {image_md course}
      row :status {status_tag course.status}
      row :description
      row :content {course.content.html_safe if course.content}
      row :start_date
      row :end_date
      row :created_at
      row :updated_at
      row :user_courses {link_to I18n.t("active_admin.all_user_courses"),
        admin_course_user_courses_path(course.id)}
      row :subjects {link_to I18n.t("active_admin.all_subjects"),
        admin_course_subjects_path(course.id)}
    end

    panel I18n.t("active_admin.user_courses") do
      table_for course.user_courses.find_user_by_role("trainee").each do |uc|
        column :user {|uc| link_to uc.user.name, admin_course_user_course_path(course, uc)}
        column :status {|uc| status_tag uc.status}
      end
    end

    active_admin_comments
  end

  sidebar I18n.t("active_admin.course_stats"), only: :show do
    attributes_table_for course do
      row(I18n.t "active_admin.total_subjects")  {course.subjects.count}
      row(I18n.t "active_admin.superusers") {course.course_superusers.count}
      row(I18n.t "active_admin.trainees") {course.course_trainees.count}
    end
  end

  sidebar I18n.t("active_admin.superusers"), only: :show do
    course.course_superusers.collect do |u|
      auto_link(u)
    end.join(content_tag("br")).html_safe
  end

  sidebar I18n.t("active_admin.trainees"), only: :show do
    course.course_trainees.collect do |u|
      auto_link(u)
    end.join(content_tag("br")).html_safe
  end

  sidebar I18n.t("active_admin.subjects"), only: :show do
    course.subjects.collect do |s|
      link_to s.name, admin_course_subject_path(course, s)
    end.join(content_tag("br")).html_safe
  end

  #new & edit
  form do |f|
    f.semantic_errors *f.object.errors.keys
    tabs do
      tab I18n.t("active_admin.course") do
        f.inputs I18n.t("active_admin.course_basic") do
          f.input :code
          f.input :name
          f.input :image, as: :file, id: "course_image", hint: image_preview(f.object)
          f.input :image_cache, as: :hidden
          f.input :description, input_html: {rows: 4}
          f.input :content, as: :ckeditor
          f.input :start_date, as: :datepicker
          f.input :end_date, as: :datepicker
        end
      end
      if !f.object.new_record?
        tab I18n.t("active_admin.assign_users") do
          f.inputs I18n.t("active_admin.users") do
            f.input :users, label: I18n.t("active_admin.superusers"),
              as: :check_boxes, collection: User.superusers
            f.input :users, label: I18n.t("active_admin.trainees"), as: :check_boxes,
              collection: User.trainee_available_for_course(f.object.id)
          end
        end
      end
      tab I18n.t("active_admin.add_subjects") do
        f.inputs do
          f.has_many :subjects, allow_destroy: true,
            heading: I18n.t("active_admin.add_subjects") do |s|
            s.input :name
            s.input :redmine_identifier
            s.input :description, input_html: {rows: 4}
            s.input :content, as: :ckeditor
          end
        end
      end
    end
    f.actions
  end

  #other actions
  action_item :start_course, only: :show do
    if controller.current_ability.can? :update, course
      link_to I18n.t("active_admin.start"), start_course_admin_course_path(course),
        class: "addition_action_items", method: :put if course.init?
    end
  end

  action_item :finish_course, only: :show do
    if controller.current_ability.can? :update, course
      link_to I18n.t("active_admin.finish"), finish_course_admin_course_path(course),
        class: "addition_action_items", method: :put if course.progress?
    end
  end

  action_item :reopen_course, only: :show do
    if controller.current_ability.can? :update, course
      link_to I18n.t("active_admin.reopen"), reopen_course_admin_course_path(course),
        class: "addition_action_items", method: :put if course.finish?
    end
  end

  member_action :start_course, method: :put do
    course = Course.find params[:id]
    course.update_course_and_user_courses :progress
    redirect_to admin_course_path(course)
  end

  member_action :finish_course, method: :put do
    course = Course.find params[:id]
    course.update_course_and_user_courses :finish
    redirect_to admin_course_path(course)
  end

  member_action :reopen_course, method: :put do
    course = Course.find params[:id]
    course.update_course_and_user_courses :init
    redirect_to admin_course_path(course)
  end

  #Subjects
  ActiveAdmin.register Subject do
    belongs_to :course, optional: true
  end

  #UserCourses
  ActiveAdmin.register UserCourse do
    belongs_to :course
  end
end
