Api.resources.each do |r|
  Object.const_set(r.to_s.singularize.camelize, Class.new(ActiveRecord::Base)) unless Object.const_defined?(r.to_s.singularize.camelize)
  Api.const_set("#{r.to_s.camelize}Controller", Class.new(ApiController) { })
  Api.const_set("#{r.to_s.camelize.singularize}BaseSerializer", Class.new(ActiveModel::Serializer) {
    attributes r.to_s.camelize.singularize.constantize.column_names
  })
end
