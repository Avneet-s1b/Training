class IncrementService
    def initialize(resource)
        @resource = resource
    end

    def increment_viewers
        @resource.increment!(:viewers)
    end
end