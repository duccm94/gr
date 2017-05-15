ActiveAdmin.register UserCourse do
  permit_params :status

  actions :index, :show

  #index
  scope "All", :all_trainee_courses, default: true
  scope :init_user_courses
  scope :progress_user_courses
  scope :finish_user_courses

  config.sort_order = "status_asc"

  index do
    column resource_selection_toggle_cell, class: "col-selectable", sortable: false do |resource|
      if can? :batch_action, resource
        resource_selection_cell resource
      end
    end
    id_column
    column :user
    column :status {|user_course| status_tag user_course.status}
    actions
  end

  filter :user_name_cont, label: I18n.t("active_admin.user_name")
  filter :status, as: :select, collection: UserCourse.statuses

  batch_action :start do |ids|
    batch_action_collection.find(ids).each do |user_course|
      user_course.update_attributes status: :progress
    end
    redirect_to collection_path, alert: I18n.t("active_admin.alert.user_course_start")
  end

  batch_action :finish do |ids|
    batch_action_collection.find(ids).each do |user_course|
      user_course.update_attributes status: :finish
    end
    redirect_to collection_path, alert: I18n.t("active_admin.alert.user_course_finish")
  end

  batch_action :reopen do |ids|
    batch_action_collection.find(ids).each do |user_course|
      user_course.update_attributes status: :init
    end
    redirect_to collection_path, alert: I18n.t("active_admin.alert.user_course_reopen")
  end

  #show
  show do
    attributes_table do
      row :id
      row :course
      row :user
      row :status {status_tag user_course.status}
      row :created_at
      row :updated_at
    end

    active_admin_comments
  end
end
