ActiveAdmin.register Subject do
  menu priority: 4
  permit_params Subject::ATTRIBUTES_PARAMS

  #index
  index do
    id_column
    column :name
    column :course
    column :redmine_identifier
    actions
  end

  filter :name_cont, label: I18n.t("active_admin.name")
  filter :redmine_identifier_cont, label: I18n.t("active_admin.redmine_identifier")
  filter :created_at

  #show
  show title: :name do
    attributes_table do
      row :id
      row :name
      row :course
      row :redmine_identifier
      row :description
      row :content {subject.content.html_safe}
      row :created_at
    end

    active_admin_comments
  end

  sidebar I18n.t("active_admin.trainees"), only: :show do
    subject.subject_trainees.collect do |u|
      auto_link(u)
    end.join(content_tag("br")).html_safe
  end

  #new & edit
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      if f.object.new_record?
        f.input :course, include_blank: false
      else
        f.input :course_code, label: I18n.t("active_admin.course_code"),
          input_html: {disabled: true}
        f.input :course_name, label: I18n.t("active_admin.course_name"),
          input_html: {disabled: true}
      end
      f.input :name
      f.input :redmine_identifier
      f.input :description, input_html: {rows: 4}
      f.input :content, as: :ckeditor
    end
    f.actions
  end
end
