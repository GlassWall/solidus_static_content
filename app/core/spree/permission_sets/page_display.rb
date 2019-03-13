module Spree
  module PermissionSets
    class PageDisplay < PermissionSets::Base

      def activate!
        can [:display, :admin], Spree::Page
      end

    end
  end
end
