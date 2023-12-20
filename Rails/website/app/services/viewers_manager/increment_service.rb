module ViewersManager
  class IncrementService < ApplicationService
    def initialize(resource)
      @resource = resource
    end

    def call
      @resource.increment!(:viewers)
    end
  end
end
