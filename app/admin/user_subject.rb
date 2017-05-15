ActiveAdmin.register UserSubject do
  permit_params :status

  actions :index, :show

  #index
  scope :all
  scope :init_user_subjects
  scope :progress_user_subjects
  scope :finish_user_subjects

  config.sort_order = "status_asc"

  index do
    column resource_selection_toggle_cell, class: "col-selectable", sortable: false do |resource|
      if can? :batch_action, resource
        resource_selection_cell resource
      end
    end
    id_column
    column :user
    column :status {|user_subject| status_tag user_subject.status}
    actions
  end

  filter :user_name_cont, label: I18n.t("active_admin.user_name")
  filter :status, as: :select, collection: UserSubject.statuses

  batch_action :start do |ids|
    batch_action_collection.find(ids).each do |user_subject|
      user_subject.update_attributes status: :progress
    end
    redirect_to collection_path, alert: I18n.t("active_admin.alert.user_subject_start")
  end

  batch_action :finish do |ids|
    batch_action_collection.find(ids).each do |user_subject|
      user_subject.update_attributes status: :finish
    end
    redirect_to collection_path, alert: I18n.t("active_admin.alert.user_subject_finish")
  end

  batch_action :reopen do |ids|
    batch_action_collection.find(ids).each do |user_subject|
      user_subject.update_attributes status: :init
    end
    redirect_to collection_path, alert: I18n.t("active_admin.alert.user_subject_reopen")
  end

  #show
  show do
    attributes_table do
      row :id
      row :course
      row :user
      row :status {status_tag user_subject.status}
      row :created_at
      row :updated_at
    end

    active_admin_comments
  end
end
