module DeviseHelper
  def devise_error_messages!
    return '' if @user.errors.empty?

    messages = @user.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <div class="alert alert-danger alert-dismissible show" role="alert">
      <button type="button" class="close" data-dismiss="alert">
        <span aria-hidden="true">&times;</span>
      </button>
      <strong>
       #{pluralize(@user.errors.count, "error")} must be fixed
      </strong>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end