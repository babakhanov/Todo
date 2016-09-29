class SharedSerializer < ActiveModel::Serializer
  def attributes(*)
    object.attributes.symbolize_keys
  end
end
