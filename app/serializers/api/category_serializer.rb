class Api::CategorySerializer < ApiSerializer
  attributes :id

  def show
    [:name, :title, :metatag]
  end

  def metatag
    true
  end
end
