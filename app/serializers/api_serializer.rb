require Rails.root.join "app/controllers/concerns/serializer_api"

class ApiSerializer < ActiveModel::Serializer

  include SerializerApi

  def attributes(*)
    super.merge _fetch_attributes(self.try(@scope.to_s).to_a)
  end

  def _fetch_attributes(attributes=[])
    (attributes.map do |a|
      [a, (self.try(a) || object.try(a))]
    end).to_h
  end
end
