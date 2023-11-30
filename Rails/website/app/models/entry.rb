module Entryable
    extend ActiveSupport::Concern
  
    included do
      has_one :entry, as: :entryable, touch: true
    end
end

class Entry < ApplicationRecord
    delegated_type :entryable, types: %w[ Message Comment ], dependent: :destroy
end
