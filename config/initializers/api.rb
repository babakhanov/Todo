Api.resources.each do |r|
  Api.const_set("#{r.to_s.camelize}Controller", Class.new(ApiController) { })
  Api.const_set("#{r.to_s.camelize.singularize}BaseSerializer", Class.new(ActiveModel::Serializer) {
    attributes r.to_s.camelize.singularize.constantize.column_names
  })
end

