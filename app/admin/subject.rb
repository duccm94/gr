ActiveAdmin.register Subject do
  menu priority: 4
  permit_params Subject::ATTRIBUTES_PARAMS

  #index
  config.batch_actions = false

  index do
    id_column
    column :image {|subject| image_sm subject}
    column :name
    column :redmine_identifier
    column :course
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
      row :image {subject.image.file.filename if subject.image?}
      row :image {image_md subject}
      row :description
      row :content {subject.content.html_safe if subject.content}
      row :created_at
      row :user_subjects {link_to I18n.t("active_admin.all_user_subjects"),
        admin_subject_user_subjects_path(subject.id)}
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
        if current_user.admin?
          f.input :course, label: I18n.t("active_admin.course_code"), as: :select,
            collection: Course.all.map {|c| [c.code, c.id]}, include_blank: false
        else
          f.input :course, label: I18n.t("active_admin.course_code"), as: :select,
            collection: current_user.courses.map {|c| [c.code, c.id]}, include_blank: false
        end
      else
        f.input :course_code, label: I18n.t("active_admin.course_code"),
          input_html: {disabled: true}
        f.input :course_name, label: I18n.t("active_admin.course_name"),
          input_html: {disabled: true}
      end
      f.input :name
      f.input :redmine_identifier
      f.input :image, as: :file, id: "subject_image", hint: image_preview(f.object)
      f.input :image_cache, as: :hidden
      f.input :description, input_html: {rows: 4}
      f.input :content, as: :ckeditor
    end
    f.actions
  end

  #UserSubjects
  ActiveAdmin.register UserSubject do
    belongs_to :subject
  end
end
