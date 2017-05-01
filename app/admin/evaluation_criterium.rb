ActiveAdmin.register EvaluationCriterium do
  menu parent: I18n.t("active_admin.evaluation")

  permit_params do
    params = EvaluationCriterium::ATTRIBUTES_PARAMS if current_user.admin?
    params
  end

  #index
  index do
    id_column
    column :name
    column :max_point
    actions
  end

  filter :name_cont, label: I18n.t("active_admin.name")
  filter :created_at

  #show
  show title: :name do
    attributes_table do
      row :id
      row :name
      row :max_point
      row :created_at
    end
  end

  #new & edit
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      f.input :max_point
    end
    f.actions
  end
end
