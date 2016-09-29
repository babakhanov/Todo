Api.resources.each do |r|

  unless File.exist? Rails.root.join("app", "models", "#{r.to_s.singularize}.rb}")
    Object.const_set(r.to_s.singularize.camelize, Class.new(ActiveRecord::Base))
  end

end
