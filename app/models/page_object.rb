class PageObject < ActiveRecord::Base
  include ThriveSmartObjectMethods

  self.caching_default = :page_object_update 
  #[in :forever, :page_object_update, :any_page_object_update, 'data_update[datetimes]', :never, 'interval[5]']
  
  def picture?
    ThriveSmart::Helpers::AssetHelper::asset?(asset_type, asset_urn)
  end
  
  def picture_url
    @picture_url ||= ThriveSmart::Helpers::AssetHelper::asset_url(asset_type, asset_urn)
  end
end
