# frozen_string_literal: true

namespace :solidus_static_content do
  desc "Loads permissions data."
  task load_permissions: :environment do
    ['Spree::PermissionSets::PageDisplay', 'Spree::PermissionSets::PageManagement'].each do |permission|
      Spree::PermissionSet.find_or_create_by(name: permission.split('PermissionSets::').last, set: permission.to_s)
    end
  end
end
