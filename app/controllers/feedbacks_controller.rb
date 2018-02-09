class FeedbacksController < ApplicationController

  def index
    order = DeliveryOrder.find_by(order_id: params[:order_order_id])
    return head :not_found unless order
    feedbacks = order.order_items.map { |item| item.feedback if order.feedback } << order.feedback
    feedbacks.reverse!
    feedbacks.reject! { |item| item == nil }
    render json: feedbacks, root: "feedbacks"
  end

  def create
    # Handle if JSON has root "feedbacks"
    if params[:feedbacks]
      feedback_params.each do |p|
        Feedback.create(p)
      end

    # Handle if JSON does not have root "feedbacks"
    else
      Feedback.create(feedback_params)
    end

    head :ok
  end

  private

  def feedback_params

    # Handle if JSON has root "feedbacks"
    if params[:feedbacks]
      params.require(:feedbacks).map do |p|
        ActionController::Parameters.new(p.to_unsafe_h).permit(:ratable_type, :rating, :comment, :ratable_id)
      end

    # Handle if JSON does not have root "feedbacks"
    else
      params.permit(:ratable_type, :rating, :comment, :ratable_id)
    end

  end

end
