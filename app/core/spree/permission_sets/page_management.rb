module Spree
  module PermissionSets
    class PageManagement < PermissionSets::Base

      def activate!
        can :manage, Spree::Page
      end

    end
  end
end
