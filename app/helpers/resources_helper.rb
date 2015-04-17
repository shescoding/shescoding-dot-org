module ResourcesHelper
  def add_custom_nav_class
    if current_page?(controller: 'resources')
      "resources-nav"
    end
  end

  def format_date(date)
    if date
      date.strftime("%B %-d, %Y")
    end
  end

  def create_filter(id)
    ".filter_#{id}"
  end

  def create_filter_targets(resource)
    ids = resource.categories.pluck(:id)
    ids.map {|i| "filter_#{i}"}.join(' ')
  end

  def empty_or_full_heart(resource)
    "filled-heart" if resource.likes > 0
  end
end
