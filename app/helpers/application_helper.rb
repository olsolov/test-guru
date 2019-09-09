module ApplicationHelper
  FLASH_TYPE_BOOTSTRAP = { alert: 'alert alert-info', notice: 'alert alert-success', error: 'alert alert-danger', warning: 'alert alert-warning' }.freeze

  def flash_class(type)
    FLASH_TYPE_BOOTSTRAP[type.to_sym]
  end
end
