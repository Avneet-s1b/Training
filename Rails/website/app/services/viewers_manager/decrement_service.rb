module ViewersManager
  class DecrementService < ApplicationService
    def initialize(resource)
      @resource = resource
    end

    def call
      @resource.decrement!(:viewers)
    end
  end
end
