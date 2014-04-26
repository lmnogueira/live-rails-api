
require 'singleton'
require 'api/live_rail'

class LiveRailsApi
  include Singleton

  def initialize
    @api = LiveRail.new({enable_cache:false, env:ENV['LIVE_RAIL_ENVIRONMENT']})
  end

  def config(config)
    @api.config config
  end

  def login(username=nil, password=nil)
    if username.nil? || password.nil?
      @api.login
    else
      @api.credentials(username, password)
      @api.login
    end
  end

  def logout
    @api.logout
  end

  def set_entity(args={})
    @api.set_entity args
  end
  def unset_entity
    @api.unset_entity
  end
  def entity_add(args={})
    @api.entity_add args
  end
  def entity_edit(args={})
    @api.entity_edit args
  end
  def entity_delete(args={})
    @api.entity_delete args
  end
  def entity_list(args = {})
    @api.entity_list args
  end
  def entity_list_bychar(args={})
    @api.entity_list_bychar args
  end
  def entity_resolve_name(args={})
    @api.entity_resolve_name args
  end
  def entity_integration_get(args={})
    @api.entity_integration_get args
  end
  def entity_exchange_list(args={})
    @api.entity_exchange_list args
  end
  def entity_network_type_list(args={})
    @api.entity_network_type_list args
  end
  def entity_network_type_parameter_list(args={})
    @api.entity_network_type_parameter_list args
  end
  def entity_quick_list(args={})
    @api.entity_quick_list args
  end
  def entity_ldb_list(args={})
    @api.entity_ldb_list args
  end
  def entity_category_domain_list(args={})
    @api.entity_category_domain_list args
  end
  def entity_category_domain_add(args={})
    @api.entity_category_domain_add args
  end
  def entity_category_domain_edit(args={})
    @api.entity_category_domain_edit args
  end
  def entity_category_domain_performance_list(args={})
    @api.entity_category_domain_performance_list args
  end
  def entity_category_domain_quick_list(args={})
    @api.entity_category_domain_quick_list args
  end
  def entity_domain_frequency_list(args={})
    @api.entity_domain_frequency_list args
  end
  def entity_domain_geo_list(args={})
    @api.entity_domain_geo_list args
  end
  def entity_domain_geo_extended_list(args={})
    @api.entity_domain_geo_extended_list args
  end
  def entity_domain_geo_extended_split_list(args={})
    @api.entity_domain_geo_extended_split_list args
  end
  def entity_domain_geo_extended_split_sum_per_domain_list(args={})
    @api.entity_domain_geo_extended_split_sum_per_domain_list args
  end
  def entity_domain_geo_distinct_vertical_list(args={})
    @api.entity_domain_geo_distinct_vertical_list args
  end
  def entity_domain_list_add(args={})
    @api.entity_domain_list_add args
  end
  def entity_domain_list_edit(args={})
    @api.entity_domain_list_edit args
  end
  def entity_domain_list_list(args={})
    @api.entity_domain_list_list args
  end
  def entity_domain_list_delete(args={})
    @api.entity_domain_list_delete args
  end
  def entity_domain_list_resolve_name(args={})
    @api.entity_domain_list_resolve_name args
  end
  def entity_domain_list_clear_list(args={})
    @api.entity_domain_list_clear_list args
  end
  def entity_domain_list_duplicate_list(args={})
    @api.entity_domain_list_duplicate_list args
  end
  def entity_domain_list_check_rule_access(args={})
    @api.entity_domain_list_check_rule_access args
  end
  def entity_domain_list_domain_add(args={})
    @api.entity_domain_list_domain_add args
  end
  def entity_domain_list_domain_delete(args={})
    @api.entity_domain_list_domain_delete args
  end
  def entity_domain_list_domain_list(args={})
    @api.entity_domain_list_domain_list args
  end
  def entity_domain_audience_list(args={})
    @api.entity_domain_audience_list args
  end
  def entity_marketplace_list(args={})
    @api.entity_marketplace_list args
  end
  def entity_marketplace_parameter_list(args={})
    @api.entity_marketplace_parameter_list args
  end
  def entity_vertical_add(args={})
    @api.entity_vertical_add args
  end
  def entity_vertical_delete(args={})
    @api.entity_vertical_delete args
  end
  def entity_vertical_resolve_name(args={})
    @api.entity_vertical_resolve_name args
  end
  def entity_vertical_list(args={})
    @api.entity_vertical_list args
  end
  def entity_vertical_publisher_list(args={})
    @api.entity_vertical_publisher_list args
  end
  def entity_vertical_available(args={})
    @api.entity_vertical_available args
  end
  def entity_vertical_check_rule_access(args={})
    @api.entity_vertical_check_rule_access args
  end
  def entity_contact_add(args={})
    @api.entity_contact_add args
  end
  def entity_contact_edit(args={})
    @api.entity_contact_edit args
  end
  def entity_contact_delete(args={})
    @api.entity_contact_delete args
  end
  def entity_contact_list(args={})
    @api.entity_contact_list args
  end
  def entity_tracker_add(args={})
    @api.entity_tracker_add args
  end
  def entity_tracker_edit(args={})
    @api.entity_tracker_edit args
  end
  def entity_tracker_delete(args={})
    @api.entity_tracker_delete args
  end
  def entity_tracker_list(args={})
    @api.entity_tracker_list args
  end
  def entity_domain_control_add(args={})
    @api.entity_domain_control_add args
  end
  def entity_domain_control_delete(args={})
    @api.entity_domain_control_delete args
  end
  def entity_domain_control_list(args={})
    @api.entity_domain_control_list args
  end
  def entity_audience_provider_list(args={})
    @api.entity_audience_provider_list args
  end
  def entity_audience_segment_list(args={})
    @api.entity_audience_segment_list args
  end
  def entity_buyer_list(args={})
    @api.entity_buyer_list args
  end
  def entity_buyer_resolve_name(args={})
    @api.entity_buyer_resolve_name args
  end
  def audience_provider_add(args={})
    @api.audience_provider_add args
  end
  def audience_provider_edit(args={})
    @api.audience_provider_edit args
  end
  def audience_provider_delete(args={})
    @api.audience_provider_delete args
  end
  def audience_provider_list(args={})
    @api.audience_provider_list args
  end
  def audience_provider_resolve_name(args={})
    @api.audience_provider_resolve_name args
  end
  def audience_provider_entity_set(args={})
    @api.audience_provider_entity_set args
  end
  def audience_provider_entity_delete(args={})
    @api.audience_provider_entity_delete args
  end
  def audience_provider_entity_list(args={})
    @api.audience_provider_entity_list args
  end
  def audience_segment_add(args={})
    @api.audience_segment_add args
  end
  def audience_segment_edit(args={})
    @api.audience_segment_edit args
  end
  def audience_segment_list(args={})
    @api.audience_segment_list args
  end
  def audience_segment_delete(args={})
    @api.audience_segment_delete args
  end
  def audience_segment_resolve_name(args={})
    @api.audience_segment_resolve_name args
  end
  def audience_segment_available(args={})
    @api.audience_segment_available args
  end
  def audience_segment_check_rule_access(args={})
    @api.audience_segment_check_rule_access args
  end
  def category_list(args={})
    @api.category_list args
  end
  def category_resolve_name(args={})
    @api.category_resolve_name args
  end
  def proximic_data_list(args={})
    @api.proximic_data_list args
  end
  def user_add(args={})
    @api.user_add args
  end
  def user_edit(args={})
    @api.user_edit args
  end
  def user_delete(args={})
    @api.user_delete args
  end
  def user_list(args={})
    @api.user_list args
  end
  def user_settings_get(args={})
    @api.user_settings_get args
  end
  def user_settings_set(args={})
    @api.user_settings_set args
  end
  def user_recover_init(args={})
    @api.user_recover_init args
  end
  def user_recover(args={})
    @api.user_recover args
  end
  def user_entity_tree(args={})
    @api.user_entity_tree args
  end
  def entity_user_list(args={})
    @api.entity_user_list args
  end
  def user_attach(args={})
    @api.user_attach args
  end
  def user_detach(args={})
    @api.user_detach args
  end
  def partner_available(args={})
    @api.partner_available args
  end
  def partner_add(args={})
    @api.partner_add args
  end

  def partner_delete(args={})
    @api.partner_delete args
  end
  def partner_edit(args={})
    @api.partner_edit args
  end

  def partner_list(args = {})
    @api.partner_list args
  end

  def partner_list_by_char(args={})
    @api.partner_list_by_char args
  end
  def partner_resolve_name(args={})
    @api.partner_resolve_name args
  end
  def partner_resolve_id(args={})
    @api.partner_resolve_id args
  end
  def partner_check_rule_access(args={})
    @api.partner_check_rule_access args
  end
  def revenue_share_list(args={})
    @api.revenue_share_list args
  end
  def revenue_share_add(args={})
    @api.revenue_share_add args
  end
  def revenue_share_edit(args={})
    @api.revenue_share_edit args
  end
  def revenue_share_delete(args={})
    @api.revenue_share_delete args
  end
  def creative_campaign_add(args={})
    @api.creative_campaign_add args
  end
  def creative_campaign_edit(args={})
    @api.creative_campaign_edit args
  end
  def creative_campaign_delete(args={})
    @api.creative_campaign_delete args
  end
  def creative_campaign_list(args={})
    @api.creative_campaign_list args
  end
  def creative_campaign_resolve_name(args={})
    @api.creative_campaign_resolve_name args
  end
  def creative_campaign_advertiser_add(args={})
    @api.creative_campaign_advertiser_add args
  end
  def creative_campaign_advertiser_delete(args={})
    @api.creative_campaign_advertiser_delete args
  end
  def creative_campaign_advertiser_list(args={})
    @api.creative_campaign_advertiser_list args
  end
  def creative_add(args={})
    @api.creative_add args
  end
  def creative_edit(args={})
    @api.creative_edit args
  end
  def creative_duplicate(args={})
    @api.creative_duplicate args
  end
  def creative_delete(args={})
    @api.creative_delete args
  end
  def creative_list(args={})
    @api.creative_list args
  end
  def creative_list_owned_orders(args={})
    @api.creative_list_owned_orders args
  end
  def creative_resolve_name(args={})
    @api.creative_resolve_name args
  end
  def creative_set_archived(args={})
    @api.creative_set_archived args
  end
  def creative_video_add(args={})
    @api.creative_video_add args
  end
  def creative_video_edit(args={})
    @api.creative_video_edit args
  end
  def creative_video_delete(args={})
    @api.creative_video_delete args
  end
  def creative_video_list(args={})
    @api.creative_video_list args
  end
  def creative_video_set(args={})
    @api.creative_video_set args
  end
  def creative_video_upload(args={})
    @api.creative_video_upload args
  end
  def creative_overlay_add(args={})
    @api.creative_overlay_add args
  end
  def creative_overlay_edit(args={})
    @api.creative_overlay_edit args
  end
  def creative_overlay_delete(args={})
    @api.creative_overlay_delete args
  end
  def creative_overlay_list(args={})
    @api.creative_overlay_list args
  end
  def creative_overlay_upload(args={})
    @api.creative_overlay_upload args
  end
  def creative_companion_add(args={})
    @api.creative_companion_add args
  end
  def creative_companion_edit(args={})
    @api.creative_companion_edit args
  end
  def creative_companion_delete(args={})
    @api.creative_companion_delete args
  end
  def creative_companion_list(args={})
    @api.creative_companion_list args
  end
  def creative_companion_upload(args={})
    @api.creative_companion_upload args
  end
  def creative_advertiser_add(args={})
    @api.creative_advertiser_add args
  end
  def creative_advertiser_delete(args={})
    @api.creative_advertiser_delete args
  end
  def creative_advertiser_list(args={})
    @api.creative_advertiser_list args
  end
  def creative_advertising_category_add(args={})
    @api.creative_advertising_category_add args
  end
  def creative_advertising_category_delete(args={})
    @api.creative_advertising_category_delete args
  end
  def creative_advertising_category_list(args={})
    @api.creative_advertising_category_list args
  end
  def creative_tracker_add(args={})
    @api.creative_tracker_add args
  end
  def creative_tracker_edit(args={})
    @api.creative_tracker_edit args
  end
  def creative_tracker_delete(args={})
    @api.creative_tracker_delete args
  end
  def creative_tracker_list(args={})
    @api.creative_tracker_list args
  end
  def order_number_list(args={})
    @api.order_number_list args
  end
  def order_number_resolve_name(args={})
    @api.order_number_resolve_name args
  end
  def order_number_resolve_name_from_order(args={})
    @api.order_number_resolve_name_from_order args
  end
  def order_package_add(args={})
    @api.order_package_add args
  end
  def order_package_edit(args={})
    @api.order_package_edit args
  end
  def order_package_delete(args={})
    @api.order_package_delete args
  end
  def order_package_list(args={})
    @api.order_package_list args
  end
  def order_package_list_stop(args={})
    @api.order_package_list_stop args
  end
  def order_package_archive(args={})
    @api.order_package_archive args
  end
  def order_package_staging(args={})
    @api.order_package_staging args
  end
  def order_package_integration_list(args={})
    @api.order_package_integration_list args
  end
  def order_package_resolve_name(args={})
    @api.order_package_resolve_name args
  end
  def order_package_get_vast(args={})
    @api.order_package_get_vast args
  end
  def order_package_quick_list(args={})
    @api.order_package_quick_list args
  end
  def order_package_frequency_set(args={})
    @api.order_package_frequency_set args
  end
  def order_package_frequency_list(args={})
    @api.order_package_frequency_list args
  end
  def order_package_frequency_delete(args={})
    @api.order_package_frequency_delete args
  end
  def order_line_add(args={})
    @api.order_line_add args
  end
  def order_line_edit(args={})
    @api.order_line_edit args
  end
  def order_line_delete(args={})
    @api.order_line_delete args
  end
  def order_line_list(args={})
    @api.order_line_list args
  end
  def order_line_integration_list(args={})
    @api.order_line_integration_list args
  end
  def order_line_publisher_list(args={})
    @api.order_line_publisher_list args
  end
  def order_line_publisher_detached_list(args={})
    @api.order_line_publisher_detached_list args
  end
  def order_line_staging(args={})
    @api.order_line_staging args
  end
  def order_line_network_status_set(args={})
    @api.order_line_network_status_set args
  end
  def order_line_publisher_status_set(args={})
    @api.order_line_publisher_status_set args
  end
  def order_line_resolve_name(args={})
    @api.order_line_resolve_name args
  end
  def order_line_list_min_start_date(args={})
    @api.order_line_list_min_start_date args
  end
  def order_line_list_max_end_date(args={})
    @api.order_line_list_max_end_date args
  end
  def order_line_list_stop(args={})
    @api.order_line_list_stop args
  end
  def order_line_quick_list(args={})
    @api.order_line_quick_list args
  end
  def order_line_creative_list(args={})
    @api.order_line_creative_list args
  end
  def order_line_creative_attach(args={})
    @api.order_line_creative_attach args
  end
  def order_line_creative_detach(args={})
    @api.order_line_creative_detach args
  end
  def order_line_site_attach(args={})
    @api.order_line_site_attach args
  end
  def order_line_site_attach_multi(args={})
    @api.order_line_site_attach_multi args
  end
  def order_line_marketplace_attach(args={})
    @api.order_line_marketplace_attach args
  end
  def order_line_marketplace_attach_multi(args={})
    @api.order_line_marketplace_attach_multi args
  end
  def order_line_site_detach(args={})
    @api.order_line_site_detach args
  end
  def order_line_site_detach_multi(args={})
    @api.order_line_site_detach_multi args
  end
  def order_line_targeting_set(args={})
    @api.order_line_targeting_set args
  end
  def order_line_targeting_delete(args={})
    @api.order_line_targeting_delete args
  end
  def order_line_targeting_list(args={})
    @api.order_line_targeting_list args
  end
  def order_line_marketplace_targeting_set(args={})
    @api.order_line_marketplace_targeting_set args
  end
  def order_line_marketplace_targeting_delete(args={})
    @api.order_line_marketplace_targeting_delete args
  end
  def order_line_marketplace_targeting_list(args={})
    @api.order_line_marketplace_targeting_list args
  end
  def order_line_frequency_set(args={})
    @api.order_line_frequency_set args
  end
  def order_line_frequency_list(args={})
    @api.order_line_frequency_list args
  end
  def order_line_frequency_delete(args={})
    @api.order_line_frequency_delete args
  end
  def order_line_template_set(args={})
    @api.order_line_template_set args
  end
  def order_line_template_list(args={})
    @api.order_line_template_list args
  end
  def order_line_template_delete(args={})
    @api.order_line_template_delete args
  end
  def order_line_entity_tracker_disabled_set(args={})
    @api.order_line_entity_tracker_disabled_set args
  end
  def order_line_entity_tracker_disabled_delete(args={})
    @api.order_line_entity_tracker_disabled_delete args
  end
  def order_line_entity_tracker_disabled_list(args={})
    @api.order_line_entity_tracker_disabled_list args
  end
  def order_line_tracker_add(args={})
    @api.order_line_tracker_add args
  end
  def order_line_tracker_edit(args={})
    @api.order_line_tracker_edit args
  end
  def order_line_tracker_list(args={})
    @api.order_line_tracker_list args
  end
  def order_line_tracker_delete(args={})
    @api.order_line_tracker_delete args
  end
  def advertiser_add(args={})
    @api.advertiser_add args
  end
  def advertiser_list(args={})
    @api.advertiser_list args
  end
  def advertiser_resolve_name(args={})
    @api.advertiser_resolve_name args
  end
  def advertiser_resolve_name_from_creative(args={})
    @api.advertiser_resolve_name_from_creative args
  end
  def advertiser_creative_list(args={})
    @api.advertiser_creative_list args
  end
  def advertising_category_list(args={})
    @api.advertising_category_list args
  end
  def advertising_category_resolve_name(args={})
    @api.advertising_category_resolve_name args
  end
  def advertising_category_resolve_name_from_creative(args={})
    @api.advertising_category_resolve_name_from_creative args
  end
  def advertising_category_creative_list(args={})
    @api.advertising_category_creative_list args
  end
  def advertising_category_check_rule_access(args={})
    @api.advertising_category_check_rule_access args
  end
  def connection_add(args={})
    @api.connection_add args
  end
  def connection_edit(args={})
    @api.connection_edit args
  end
  def connection_delete(args={})
    @api.connection_delete args
  end
  def connection_list(args={})
    @api.connection_list args
  end
  def connection_resolve_name(args={})
    @api.connection_resolve_name args
  end
  def connection_set_archived(args={})
    @api.connection_set_archived args
  end
  def connection_check_rule_access(args={})
    @api.connection_check_rule_access args
  end
  def connection_tracker_add(args={})
    @api.connection_tracker_add args
  end
  def connection_tracker_edit(args={})
    @api.connection_tracker_edit args
  end
  def connection_tracker_delete(args={})
    @api.connection_tracker_delete args
  end
  def connection_tracker_list(args={})
    @api.connection_tracker_list args
  end
  def connection_frequency_add(args={})
    @api.connection_frequency_add args
  end
  def connection_frequency_edit(args={})
    @api.connection_frequency_edit args
  end
  def connection_frequency_delete(args={})
    @api.connection_frequency_delete args
  end
  def connection_frequency_list(args={})
    @api.connection_frequency_list args
  end
  def connection_deal_attach(args={})
    @api.connection_deal_attach args
  end
  def connection_deal_detach(args={})
    @api.connection_deal_detach args
  end
  def connection_deal_list(args={})
    @api.connection_deal_list args
  end
  def site_settings_list(args={})
    @api.site_settings_list args
  end
  def site_settings_set(args={})
    @api.site_settings_set args
  end
  def pricing_floor_rule_add(args={})
    @api.pricing_floor_rule_add args
  end
  def pricing_floor_rule_edit(args={})
    @api.pricing_floor_rule_edit args
  end
  def pricing_floor_rule_list(args={})
    @api.pricing_floor_rule_list args
  end
  def pricing_floor_rule_delete(args={})
    @api.pricing_floor_rule_delete args
  end
  def publisher_tag_available(args={})
    @api.publisher_tag_available args
  end
  def publisher_tag_add(args={})
    @api.publisher_tag_add args
  end
  def publisher_tag_delete(args={})
    @api.publisher_tag_delete args
  end
  def publisher_tag_list(args={})
    @api.publisher_tag_list args
  end
  def publisher_tag_check_rule_access(args={})
    @api.publisher_tag_check_rule_access args
  end
  def publisher_frequency_add(args={})
    @api.publisher_frequency_add args
  end
  def publisher_frequency_delete(args={})
    @api.publisher_frequency_delete args
  end
  def publisher_frequency_list(args={})
    @api.publisher_frequency_list args
  end
  def publisher_check_rule_access(args={})
    @api.publisher_check_rule_access args
  end
  def allocation_add(args={})
    @api.allocation_add args
  end
  def allocation_edit(args={})
    @api.allocation_edit args
  end
  def allocation_delete(args={})
    @api.allocation_delete args
  end
  def allocation_list(args={})
    @api.allocation_list args
  end
  def allocation_duplicate(args={})
    @api.allocation_duplicate args
  end
  def allocation_group_add(args={})
    @api.allocation_group_add args
  end
  def allocation_group_edit(args={})
    @api.allocation_group_edit args
  end
  def allocation_group_delete(args={})
    @api.allocation_group_delete args
  end
  def allocation_group_list(args={})
    @api.allocation_group_list args
  end
  def allocation_source_add(args={})
    @api.allocation_source_add args
  end
  def allocation_source_edit(args={})
    @api.allocation_source_edit args
  end
  def allocation_source_delete(args={})
    @api.allocation_source_delete args
  end
  def allocation_source_list(args={})
    @api.allocation_source_list args
  end
  def allocation_update_position(args={})
    @api.allocation_update_position args
  end
  def allocation_resolve_name(args={})
    @api.allocation_resolve_name args
  end
  def allocation_set_archived(args={})
    @api.allocation_set_archived args
  end
  def reports_portfolio_add(args={})
    @api.reports_portfolio_add args
  end
  def reports_portfolio_edit(args={})
    @api.reports_portfolio_edit args
  end
  def reports_portfolio_delete(args={})
    @api.reports_portfolio_delete args
  end
  def reports_portfolio_list(args={})
    @api.reports_portfolio_list args
  end
  def reports_portfolio_schedule_add(args={})
    @api.reports_portfolio_schedule_add args
  end
  def reports_portfolio_schedule_edit(args={})
    @api.reports_portfolio_schedule_edit args
  end
  def reports_portfolio_schedule_delete(args={})
    @api.reports_portfolio_schedule_delete args
  end
  def reports_portfolio_schedule_list(args={})
    @api.reports_portfolio_schedule_list args
  end
  def custom_macro_list(args={})
    @api.custom_macro_list args
  end
  def custom_macro_add(args={})
    @api.custom_macro_add args
  end
  def custom_macro_edit(args={})
    @api.custom_macro_edit args
  end
  def custom_macro_delete(args={})
    @api.custom_macro_delete args
  end
  def custom_macro_attach(args={})
    @api.custom_macro_attach args
  end
  def custom_macro_detach(args={})
    @api.custom_macro_detach args
  end
  def custom_macro_edit_attach(args={})
    @api.custom_macro_edit_attach args
  end
  def location_list(args={})
    @api.location_list args
  end
  def location_check_rule_access(args={})
    @api.location_check_rule_access args
  end
  def location_list_add(args={})
    @api.location_list_add args
  end
  def location_list_edit(args={})
    @api.location_list_edit args
  end
  def location_list_delete(args={})
    @api.location_list_delete args
  end
  def location_list_list(args={})
    @api.location_list_list args
  end
  def location_list_resolve_name(args={})
    @api.location_list_resolve_name args
  end
  def location_list_check_rule_access(args={})
    @api.location_list_check_rule_access args
  end
  def location_list_location_add(args={})
    @api.location_list_location_add args
  end
  def location_list_location_delete(args={})
    @api.location_list_location_delete args
  end
  def location_list_location_list(args={})
    @api.location_list_location_list args
  end
  def statistics(args={})
    @api.statistics args
  end
  def statistics_aggregated(args={})
    @api.statistics_aggregated args
  end
  def summary_domain_list(args={})
    @api.summary_domain_list args
  end
  def summary_fingerprint_list(args={})
    @api.summary_fingerprint_list args
  end
  def summary_media_list(args={})
    @api.summary_media_list args
  end
  def summary_partner_list(args={})
    @api.summary_partner_list args
  end
  def summary_tag_list(args={})
    @api.summary_tag_list args
  end
  def summary_vertical_list(args={})
    @api.summary_vertical_list args
  end
  def summary_order_list(args={})
    @api.summary_order_list args
  end
  def summary_order_line_list(args={})
    @api.summary_order_line_list args
  end
  def summary_creative_list(args={})
    @api.summary_creative_list args
  end
  def summary_creative_campaign_list(args={})
    @api.summary_creative_campaign_list args
  end
  def summary_mobile_carrier_list(args={})
    @api.summary_mobile_carrier_list args
  end
  def summary_mobile_make_list(args={})
    @api.summary_mobile_make_list args
  end
  def site_list_add(args={})
    @api.site_list_add args
  end
  def site_list_edit(args={})
    @api.site_list_edit args
  end
  def site_list_delete(args={})
    @api.site_list_delete args
  end
  def site_list_list(args={})
    @api.site_list_list args
  end
  def site_list_site_add(args={})
    @api.site_list_site_add args
  end
  def site_list_site_delete(args={})
    @api.site_list_site_delete args
  end
  def site_list_site_list(args={})
    @api.site_list_site_list args
  end
  def site_list_check_rule_access(args={})
    @api.site_list_check_rule_access args
  end
  def site_list_resolve_name(args={})
    @api.site_list_resolve_name args
  end
  def comscore_target_list(args={})
    @api.comscore_target_list args
  end
  def comscore_domain_list(args={})
    @api.comscore_domain_list args
  end
  def viewable_check_rule_access(args={})
    @api.viewable_check_rule_access args
  end
  def nielsen_demographic_list(args={})
    @api.nielsen_demographic_list args
  end
  def nielsen_campaign_placement_exposure_list(args={})
    @api.nielsen_campaign_placement_exposure_list args
  end
  def nielsen_ocr_campaign_list(args={})
    @api.nielsen_ocr_campaign_list args
  end
  def contextual_segments_get(args={})
    @api.contextual_segments_get args
  end
  def contextual_segments_resolve_name(args={})
    @api.contextual_segments_resolve_name args
  end
  def contextual_segment_check_rule_access(args={})
    @api.contextual_segment_check_rule_access args
  end
  def qc_advertiser_list(args={})
    @api.qc_advertiser_list args
  end
  def qc_advertiser_check_rule_access(args={})
    @api.qc_advertiser_check_rule_access args
  end
  def qc_advertiser_resolve_name(args={})
    @api.qc_advertiser_resolve_name args
  end
  def deal_add(args={})
    @api.deal_add args
  end
  def deal_edit(args={})
    @api.deal_edit args
  end
  def deal_list(args={})
    @api.deal_list args
  end
  def deal_delete(args={})
    @api.deal_delete args
  end
  def deal_resolve_name(args={})
    @api.deal_resolve_name args
  end
  def deal_check_rule_access(args={})
    @api.deal_check_rule_access args
  end
  def blocklist_add(args={})
    @api.blocklist_add args
  end
  def blocklist_edit(args={})
    @api.blocklist_edit args
  end
  def blocklist_list(args={})
    @api.blocklist_list args
  end
  def blocklist_delete(args={})
    @api.blocklist_delete args
  end
  def blocklist_advertiser_add(args={})
    @api.blocklist_advertiser_add args
  end
  def blocklist_advertiser_delete(args={})
    @api.blocklist_advertiser_delete args
  end
  def blocklist_advertiser_list(args={})
    @api.blocklist_advertiser_list args
  end
  def blocklist_category_add(args={})
    @api.blocklist_category_add args
  end
  def blocklist_category_delete(args={})
    @api.blocklist_category_delete args
  end
  def blocklist_category_list(args={})
    @api.blocklist_category_list args
  end
  def mobile_connection_type_check_rule_access(args={})
    @api.mobile_connection_type_check_rule_access args
  end
  def mobile_carrier_check_rule_access(args={})
    @api.mobile_carrier_check_rule_access args
  end
  def mobile_make_check_rule_access(args={})
    @api.mobile_make_check_rule_access args
  end
end
