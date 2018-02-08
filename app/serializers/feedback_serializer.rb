class FeedbackSerializer < ActiveModel::Serializer
  attributes :ratable_id, :ratable_type, :rating, :comment

  # def ratable_id
  #   object.ratable.id
  # end

end
