module ResourcesHelper
  def add_custom_nav_class
    if current_page?(controller: 'resources')
      "resources-nav"
    end
  end
end
