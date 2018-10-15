class AddPagesSummary < SolidusSupport::Migration[4.2]

  def self.up
    add_column :spree_pages, :summary, :string
    add_column :spree_pages, :summary_checkout, :boolean
  end

  def self.down
    remove_column :spree_pages, :summary
    remove_column :spree_pages, :summary_checkout
  end

end
