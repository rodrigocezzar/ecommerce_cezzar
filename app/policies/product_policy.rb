# frozen_string_literal: true

class ProductPolicy < ApplicationPolicy
    def new?
      Category.count.positive?
    end
end
