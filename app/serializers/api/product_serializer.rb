class Api::ProductSerializer < ApiSerializer
  attributes :id

  def index
    [:name]
  end

  def show
    [:description]
  end
end
