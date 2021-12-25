# frozen_string_literal: true

module Api::ResultsSerializable
  extend ActiveSupport::Concern

  private

  def render_results(models, serializer:, **options)
    render json: models,
           each_serializer: serializer,
           adapter: :json,
           root: :results,
           **options
  end
end
