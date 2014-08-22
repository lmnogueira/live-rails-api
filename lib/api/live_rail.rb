require 'rest-client'
require 'json'
require 'crack'

class LiveRail

  def initialize (args)
    @username = args[:username] || ENV['LIVE_RAIL_USERNAME']
    @password = args[:password] || ENV['LIVE_RAIL_PASSWORD']
    @env = args[:env] || 'development'

    if @env == 'production'
      @url = "http://api4.liverail.com"
    else
      puts "YOU ARE USING LIVE RAIL TEST ENVIRONMENT: please consider to set the LIVE_RAIL_ENVIRONMENT parameter to 'production' before going to production to ommit this message."
      @url = "http://api4.int.liverail.com"
    end
  end

  def entity_add(args={})
    path="/entity/add"
    request path, args
  end

  def entity_edit(args={})
    path="/entity/edit"
    request path, args
  end

  def entity_delete(args={})
    path="/entity/delete"
    request path, args
  end

  def entity_list_bychar(args={})
    path="/entity/list/bychar"
    request path, args
  end
  def entity_resolve_name(args={})
    path="/entity/resolve/name"
    request path, args
  end
  def entity_integration_get(args={})
    path="/entity/integration/get"
    request path, args
  end
  def entity_exchange_list(args={})
    path="/entity/exchange/list"
    request path, args
  end
  def entity_network_type_list(args={})
    path="/entity/network/type/list"
    request path, args
  end
  def entity_network_type_parameter_list(args={})
    path="/entity/network/type/parameter/list"
    request path, args
  end
  def entity_quick_list(args={})
    path="/entity/quick/list"
    request path, args
  end
  def entity_ldb_list(args={})
    path="/entity/ldb/list"
    request path, args
  end
  def entity_category_domain_list(args={})
    path="/entity/category/domain/list"
    request path, args
  end
  def entity_category_domain_add(args={})
    path="/entity/category/domain/add"
    request path, args
  end
  def entity_category_domain_edit(args={})
    path="/entity/category/domain/edit"
    request path, args
  end
  def entity_category_domain_performance_list(args={})
    path="/entity/category/domain/performance/list"
    request path, args
  end
  def entity_category_domain_quick_list(args={})
    path="/entity/category/domain/quick/list"
    request path, args
  end
  def entity_domain_frequency_list(args={})
    path="/entity/domain/frequency/list"
    request path, args
  end
  def entity_domain_geo_list(args={})
    path="/entity/domain/geo/list"
    request path, args
  end
  def entity_domain_geo_extended_list(args={})
    path="/entity/domain/geo/extended/list"
    request path, args
  end
  def entity_domain_geo_extended_split_list(args={})
    path="/entity/domain/geo/extended/split/list"
    request path, args
  end
  def entity_domain_geo_extended_split_sum_per_domain_list(args={})
    path="/entity/domain/geo/extended/split/sum/per/domain/list"
    request path, args
  end
  def entity_domain_geo_distinct_vertical_list(args={})
    path="/entity/domain/geo/distinct/vertical/list"
    request path, args
  end
  def entity_domain_list_add(args={})
    path="/entity/domain/list/add"
    request path, args
  end
  def entity_domain_list_edit(args={})
    path="/entity/domain/list/edit"
    request path, args
  end
  def entity_domain_list_list(args={})
    path="/entity/domain/list/list"
    request path, args
  end
  def entity_domain_list_delete(args={})
    path="/entity/domain/list/delete"
    request path, args
  end
  def entity_domain_list_resolve_name(args={})
    path="/entity/domain/list/resolve/name"
    request path, args
  end
  def entity_domain_list_clear_list(args={})
    path="/entity/domain/list/clear/list"
    request path, args
  end
  def entity_domain_list_duplicate_list(args={})
    path="/entity/domain/list/duplicate/list"
    request path, args
  end
  def entity_domain_list_check_rule_access(args={})
    path="/entity/domain/list/check/rule/access"
    request path, args
  end
  def entity_domain_list_domain_add(args={})
    path="/entity/domain/list/domain/add"
    request path, args
  end
  def entity_domain_list_domain_delete(args={})
    path="/entity/domain/list/domain/delete"
    request path, args
  end
  def entity_domain_list_domain_list(args={})
    path="/entity/domain/list/domain/list"
    request path, args
  end
  def entity_domain_audience_list(args={})
    path="/entity/domain/audience/list"
    request path, args
  end
  def entity_marketplace_list(args={})
    path="/entity/marketplace/list"
    request path, args
  end
  def entity_marketplace_parameter_list(args={})
    path="/entity/marketplace/parameter/list"
    request path, args
  end
  def entity_vertical_list(args={})
    path="/entity/vertical/list"
    response = request path, args
  end

  def entity_vertical_add(args={})
    path="/entity/vertical/add"
    response = request path, args
  end
  def entity_vertical_delete(args={})
    path="/entity/vertical/delete"
    response = request path, args
  end
  def entity_vertical_resolve_name(args={})
    path="/entity/vertical/resolve/name"
    request path, args
  end
  def entity_vertical_publisher_list(args={})
    path="/entity/vertical/publisher/list"
    request path, args
  end
  def entity_vertical_available(args={})
    path="/entity/vertical/available"
    request path, args
  end
  def entity_vertical_check_rule_access(args={})
    path="/entity/vertical/check/rule/access"
    request path, args
  end
  def entity_contact_add(args={})
    path="/entity/contact/add"
    request path, args
  end
  def entity_contact_edit(args={})
    path="/entity/contact/edit"
    request path, args
  end
  def entity_contact_delete(args={})
    path="/entity/contact/delete"
    request path, args
  end
  def entity_contact_list(args={})
    path="/entity/contact/list"
    request path, args
  end
  def entity_tracker_add(args={})
    path="/entity/tracker/add"
    request path, args
  end
  def entity_tracker_edit(args={})
    path="/entity/tracker/edit"
    request path, args
  end
  def entity_tracker_delete(args={})
    path="/entity/tracker/delete"
    request path, args
  end
  def entity_tracker_list(args={})
    path="/entity/tracker/list"
    request path, args
  end
  def entity_domain_control_add(args={})
    path="/entity/domain/control/add"
    request path, args
  end
  def entity_domain_control_delete(args={})
    path="/entity/domain/control/delete"
    request path, args
  end
  def entity_domain_control_list(args={})
    path="/entity/domain/control/list"
    request path, args
  end
  def entity_audience_provider_list(args={})
    path="/entity/audience/provider/list"
    request path, args
  end
  def entity_audience_segment_list(args={})
    path="/entity/audience/segment/list"
    request path, args
  end
  def entity_buyer_list(args={})
    path="/entity/buyer/list"
    request path, args
  end
  def entity_buyer_resolve_name(args={})
    path="/entity/buyer/resolve/name"
    request path, args
  end
  def audience_provider_add(args={})
    path="/audience/provider/add"
    request path, args
  end
  def audience_provider_edit(args={})
    path="/audience/provider/edit"
    request path, args
  end
  def audience_provider_delete(args={})
    path="/audience/provider/delete"
    request path, args
  end
  def audience_provider_list(args={})
    path="/audience/provider/list"
    request path, args
  end
  def audience_provider_resolve_name(args={})
    path="/audience/provider/resolve/name"
    request path, args
  end
  def audience_provider_entity_set(args={})
    path="/audience/provider/entity/set"
    request path, args
  end
  def audience_provider_entity_delete(args={})
    path="/audience/provider/entity/delete"
    request path, args
  end
  def audience_provider_entity_list(args={})
    path="/audience/provider/entity/list"
    request path, args
  end
  def audience_segment_add(args={})
    path="/audience/segment/add"
    request path, args
  end
  def audience_segment_edit(args={})
    path="/audience/segment/edit"
    request path, args
  end
  def audience_segment_list(args={})
    path="/audience/segment/list"
    request path, args
  end
  def audience_segment_delete(args={})
    path="/audience/segment/delete"
    request path, args
  end
  def audience_segment_resolve_name(args={})
    path="/audience/segment/resolve/name"
    request path, args
  end
  def audience_segment_available(args={})
    path="/audience/segment/available"
    request path, args
  end
  def audience_segment_check_rule_access(args={})
    path="/audience/segment/check/rule/access"
    request path, args
  end
  def category_list(args={})
    path="/category/list"
    request path, args
  end
  def category_resolve_name(args={})
    path="/category/resolve/name"
    request path, args
  end
  def proximic_data_list(args={})
    path="/proximic/data/list"
    request path, args
  end
  def user_add(args={})
    path="/user/add"
    request path, args
  end
  def user_edit(args={})
    path="/user/edit"
    request path, args
  end
  def user_delete(args={})
    path="/user/delete"
    request path, args
  end
  def user_list(args={})
    path="/user/list"
    request path, args
  end
  def user_settings_get(args={})
    path="/user/settings/get"
    request path, args
  end
  def user_settings_set(args={})
    path="/user/settings/set"
    request path, args
  end
  def user_recover_init(args={})
    path="/user/recover/init"
    request path, args
  end
  def user_recover(args={})
    path="/user/recover"
    request path, args
  end
  def user_entity_tree(args={})
    path="/user/entity/tree"
    request path, args
  end
  def entity_user_list(args={})
    path="/entity/user/list"
    request path, args
  end
  def user_attach(args={})
    path="/user/attach"
    request path, args
  end
  def user_detach(args={})
    path="/user/detach"
    request path, args
  end
  def partner_available(args={})
    path="/partner/available"
    request path, args
  end
  def partner_edit(args={})
    path="/partner/edit"
    request path, args
  end
  def partner_add (args={})
    path ="/partner/add"
    response = request path, args
  end

  def partner_delete (args={})
    path ="/partner/delete"
    response = request path, args
  end

  def partner_list (args={})
    path ="/partner/list"
    response = request path, args
  end
  def partner_list_by_char(args={})
    path="/partner/list/by/char"
    request path, args
  end
  def partner_resolve_name(args={})
    path="/partner/resolve/name"
    request path, args
  end
  def partner_resolve_id(args={})
    path="/partner/resolve/id"
    request path, args
  end
  def partner_check_rule_access(args={})
    path="/partner/check/rule/access"
    request path, args
  end
  def revenue_share_list(args={})
    path="/revenue-share/list"
    request path, args
  end
  def revenue_share_add(args={})
    path="/revenue-share/add"
    request path, args
  end
  def revenue_share_edit(args={})
    path="/revenue-share/edit"
    request path, args
  end
  def revenue_share_delete(args={})
    path="/revenue-share/delete"
    request path, args
  end
  def creative_campaign_add(args={})
    path="/creative/campaign/add"
    request path, args
  end
  def creative_campaign_edit(args={})
    path="/creative/campaign/edit"
    request path, args
  end
  def creative_campaign_delete(args={})
    path="/creative/campaign/delete"
    request path, args
  end
  def creative_campaign_list(args={})
    path="/creative/campaign/list"
    request path, args
  end
  def creative_campaign_resolve_name(args={})
    path="/creative/campaign/resolve/name"
    request path, args
  end
  def creative_campaign_advertiser_add(args={})
    path="/creative/campaign/advertiser/add"
    request path, args
  end
  def creative_campaign_advertiser_delete(args={})
    path="/creative/campaign/advertiser/delete"
    request path, args
  end
  def creative_campaign_advertiser_list(args={})
    path="/creative/campaign/advertiser/list"
    request path, args
  end
  def creative_add(args={})
    path="/creative/add"
    request path, args
  end
  def creative_edit(args={})
    path="/creative/edit"
    request path, args
  end
  def creative_duplicate(args={})
    path="/creative/duplicate"
    request path, args
  end
  def creative_delete(args={})
    path="/creative/delete"
    request path, args
  end
  def creative_list(args={})
    path="/creative/list"
    request path, args
  end
  def creative_list_owned_orders(args={})
    path="/creative/list/owned/orders"
    request path, args
  end
  def creative_resolve_name(args={})
    path="/creative/resolve/name"
    request path, args
  end
  def creative_set_archived(args={})
    path="/creative/set/archived"
    request path, args
  end
  def creative_video_add(args={})
    path="/creative/video/add"
    request path, args
  end
  def creative_video_edit(args={})
    path="/creative/video/edit"
    request path, args
  end
  def creative_video_delete(args={})
    path="/creative/video/delete"
    request path, args
  end
  def creative_video_list(args={})
    path="/creative/video/list"
    request path, args
  end
  def creative_video_set(args={})
    path="/creative/video/set"
    request path, args
  end
  def creative_video_upload(args={})
    path="/creative/video/upload"
    request path, args
  end
  def creative_overlay_add(args={})
    path="/creative/overlay/add"
    request path, args
  end
  def creative_overlay_edit(args={})
    path="/creative/overlay/edit"
    request path, args
  end
  def creative_overlay_delete(args={})
    path="/creative/overlay/delete"
    request path, args
  end
  def creative_overlay_list(args={})
    path="/creative/overlay/list"
    request path, args
  end
  def creative_overlay_upload(args={})
    path="/creative/overlay/upload"
    request path, args
  end
  def creative_companion_add(args={})
    path="/creative/companion/add"
    request path, args
  end
  def creative_companion_edit(args={})
    path="/creative/companion/edit"
    request path, args
  end
  def creative_companion_delete(args={})
    path="/creative/companion/delete"
    request path, args
  end
  def creative_companion_list(args={})
    path="/creative/companion/list"
    request path, args
  end
  def creative_companion_upload(args={})
    path="/creative/companion/upload"
    request path, args
  end
  def creative_advertiser_add(args={})
    path="/creative/advertiser/add"
    request path, args
  end
  def creative_advertiser_delete(args={})
    path="/creative/advertiser/delete"
    request path, args
  end
  def creative_advertiser_list(args={})
    path="/creative/advertiser/list"
    request path, args
  end
  def creative_advertising_category_add(args={})
    path="/creative/advertising/category/add"
    request path, args
  end
  def creative_advertising_category_delete(args={})
    path="/creative/advertising/category/delete"
    request path, args
  end
  def creative_advertising_category_list(args={})
    path="/creative/advertising/category/list"
    request path, args
  end
  def creative_tracker_add(args={})
    path="/creative/tracker/add"
    request path, args
  end
  def creative_tracker_edit(args={})
    path="/creative/tracker/edit"
    request path, args
  end
  def creative_tracker_delete(args={})
    path="/creative/tracker/delete"
    request path, args
  end
  def creative_tracker_list(args={})
    path="/creative/tracker/list"
    request path, args
  end
  def order_number_list(args={})
    path="/order/number/list"
    request path, args
  end
  def order_number_resolve_name(args={})
    path="/order/number/resolve/name"
    request path, args
  end
  def order_number_resolve_name_from_order(args={})
    path="/order/number/resolve/name/from/order"
    request path, args
  end
  def order_package_add(args={})
    path="/order/package/add"
    request path, args
  end
  def order_package_edit(args={})
    path="/order/package/edit"
    request path, args
  end
  def order_package_delete(args={})
    path="/order/package/delete"
    request path, args
  end
  def order_package_list(args={})
    path="/order/package/list"
    request path, args
  end
  def order_package_list_stop(args={})
    path="/order/package/list/stop"
    request path, args
  end
  def order_package_archive(args={})
    path="/order/package/archive"
    request path, args
  end
  def order_package_staging(args={})
    path="/order/package/staging"
    request path, args
  end
  def order_package_integration_list(args={})
    path="/order/package/integration/list"
    request path, args
  end
  def order_package_resolve_name(args={})
    path="/order/package/resolve/name"
    request path, args
  end
  def order_package_get_vast(args={})
    path="/order/package/get/vast"
    request path, args
  end
  def order_package_quick_list(args={})
    path="/order/package/quick/list"
    request path, args
  end
  def order_package_frequency_set(args={})
    path="/order/package/frequency/set"
    request path, args
  end
  def order_package_frequency_list(args={})
    path="/order/package/frequency/list"
    request path, args
  end
  def order_package_frequency_delete(args={})
    path="/order/package/frequency/delete"
    request path, args
  end
  def order_line_add(args={})
    path="/order/line/add"
    request path, args
  end
  def order_line_edit(args={})
    path="/order/line/edit"
    request path, args
  end
  def order_line_delete(args={})
    path="/order/line/delete"
    request path, args
  end
  def order_line_list(args={})
    path="/order/line/list"
    request path, args
  end
  def order_line_integration_list(args={})
    path="/order/line/integration/list"
    request path, args
  end
  def order_line_publisher_list(args={})
    path="/order/line/publisher/list"
    request path, args
  end
  def order_line_publisher_detached_list(args={})
    path="/order/line/publisher/detached/list"
    request path, args
  end
  def order_line_staging(args={})
    path="/order/line/staging"
    request path, args
  end
  def order_line_network_status_set(args={})
    path="/order/line/network/status/set"
    request path, args
  end
  def order_line_publisher_status_set(args={})
    path="/order/line/publisher/status/set"
    request path, args
  end
  def order_line_resolve_name(args={})
    path="/order/line/resolve/name"
    request path, args
  end
  def order_line_list_min_start_date(args={})
    path="/order/line/list/min/start/date"
    request path, args
  end
  def order_line_list_max_end_date(args={})
    path="/order/line/list/max/end/date"
    request path, args
  end
  def order_line_list_stop(args={})
    path="/order/line/list/stop"
    request path, args
  end
  def order_line_quick_list(args={})
    path="/order/line/quick/list"
    request path, args
  end
  def order_line_creative_list(args={})
    path="/order/line/creative/list"
    request path, args
  end
  def order_line_creative_attach(args={})
    path="/order/line/creative/attach"
    request path, args
  end
  def order_line_creative_detach(args={})
    path="/order/line/creative/detach"
    request path, args
  end
  def order_line_site_attach(args={})
    path="/order/line/site/attach"
    request path, args
  end
  def order_line_site_attach_multi(args={})
    path="/order/line/site/attach/multi"
    request path, args
  end
  def order_line_marketplace_attach(args={})
    path="/order/line/marketplace/attach"
    request path, args
  end
  def order_line_marketplace_attach_multi(args={})
    path="/order/line/marketplace/attach/multi"
    request path, args
  end
  def order_line_site_detach(args={})
    path="/order/line/site/detach"
    request path, args
  end
  def order_line_site_detach_multi(args={})
    path="/order/line/site/detach/multi"
    request path, args
  end
  def order_line_targeting_set(args={})
    path="/order/line/targeting/set"
    request path, args
  end
  def order_line_targeting_delete(args={})
    path="/order/line/targeting/delete"
    request path, args
  end
  def order_line_targeting_list(args={})
    path="/order/line/targeting/list"
    request path, args
  end
  def order_line_marketplace_targeting_set(args={})
    path="/order/line/marketplace/targeting/set"
    request path, args
  end
  def order_line_marketplace_targeting_delete(args={})
    path="/order/line/marketplace/targeting/delete"
    request path, args
  end
  def order_line_marketplace_targeting_list(args={})
    path="/order/line/marketplace/targeting/list"
    request path, args
  end
  def order_line_frequency_set(args={})
    path="/order/line/frequency/set"
    request path, args
  end
  def order_line_frequency_list(args={})
    path="/order/line/frequency/list"
    request path, args
  end
  def order_line_frequency_delete(args={})
    path="/order/line/frequency/delete"
    request path, args
  end
  def order_line_template_set(args={})
    path="/order/line/template/set"
    request path, args
  end
  def order_line_template_list(args={})
    path="/order/line/template/list"
    request path, args
  end
  def order_line_template_delete(args={})
    path="/order/line/template/delete"
    request path, args
  end
  def order_line_entity_tracker_disabled_set(args={})
    path="/order/line/entity/tracker/disabled/set"
    request path, args
  end
  def order_line_entity_tracker_disabled_delete(args={})
    path="/order/line/entity/tracker/disabled/delete"
    request path, args
  end
  def order_line_entity_tracker_disabled_list(args={})
    path="/order/line/entity/tracker/disabled/list"
    request path, args
  end
  def order_line_tracker_add(args={})
    path="/order/line/tracker/add"
    request path, args
  end
  def order_line_tracker_edit(args={})
    path="/order/line/tracker/edit"
    request path, args
  end
  def order_line_tracker_list(args={})
    path="/order/line/tracker/list"
    request path, args
  end
  def order_line_tracker_delete(args={})
    path="/order/line/tracker/delete"
    request path, args
  end
  def advertiser_add(args={})
    path="/advertiser/add"
    request path, args
  end
  def advertiser_list(args={})
    path="/advertiser/list"
    request path, args
  end
  def advertiser_resolve_name(args={})
    path="/advertiser/resolve/name"
    request path, args
  end
  def advertiser_resolve_name_from_creative(args={})
    path="/advertiser/resolve/name/from/creative"
    request path, args
  end
  def advertiser_creative_list(args={})
    path="/advertiser/creative/list"
    request path, args
  end
  def advertising_category_list(args={})
    path="/advertising/category/list"
    request path, args
  end
  def advertising_category_resolve_name(args={})
    path="/advertising/category/resolve/name"
    request path, args
  end
  def advertising_category_resolve_name_from_creative(args={})
    path="/advertising/category/resolve/name/from/creative"
    request path, args
  end
  def advertising_category_creative_list(args={})
    path="/advertising/category/creative/list"
    request path, args
  end
  def advertising_category_check_rule_access(args={})
    path="/advertising/category/check/rule/access"
    request path, args
  end
  def connection_add(args={})
    path="/connection/add"
    request path, args
  end
  def connection_edit(args={})
    path="/connection/edit"
    request path, args
  end
  def connection_delete(args={})
    path="/connection/delete"
    request path, args
  end
  def connection_list(args={})
    path="/connection/list"
    request path, args
  end
  def connection_resolve_name(args={})
    path="/connection/resolve/name"
    request path, args
  end
  def connection_set_archived(args={})
    path="/connection/set/archived"
    request path, args
  end
  def connection_check_rule_access(args={})
    path="/connection/check/rule/access"
    request path, args
  end
  def connection_tracker_add(args={})
    path="/connection/tracker/add"
    request path, args
  end
  def connection_tracker_edit(args={})
    path="/connection/tracker/edit"
    request path, args
  end
  def connection_tracker_delete(args={})
    path="/connection/tracker/delete"
    request path, args
  end
  def connection_tracker_list(args={})
    path="/connection/tracker/list"
    request path, args
  end
  def connection_frequency_add(args={})
    path="/connection/frequency/add"
    request path, args
  end
  def connection_frequency_edit(args={})
    path="/connection/frequency/edit"
    request path, args
  end
  def connection_frequency_delete(args={})
    path="/connection/frequency/delete"
    request path, args
  end
  def connection_frequency_list(args={})
    path="/connection/frequency/list"
    request path, args
  end
  def connection_deal_attach(args={})
    path="/connection/deal/attach"
    request path, args
  end
  def connection_deal_detach(args={})
    path="/connection/deal/detach"
    request path, args
  end
  def connection_deal_list(args={})
    path="/connection/deal/list"
    request path, args
  end
  def site_settings_list(args={})
    path="/site/settings/list"
    request path, args
  end
  def site_settings_set(args={})
    path="/site/settings/set"
    request path, args
  end
  def pricing_floor_rule_add(args={})
    path="/pricing/floor/rule/add"
    request path, args
  end
  def pricing_floor_rule_edit(args={})
    path="/pricing/floor/rule/edit"
    request path, args
  end
  def pricing_floor_rule_list(args={})
    path="/pricing/floor/rule/list"
    request path, args
  end
  def pricing_floor_rule_delete(args={})
    path="/pricing/floor/rule/delete"
    request path, args
  end
  def publisher_tag_available(args={})
    path="/publisher/tag/available"
    request path, args
  end
  def publisher_tag_add(args={})
    path="/publisher/tag/add"
    request path, args
  end
  def publisher_tag_delete(args={})
    path="/publisher/tag/delete"
    request path, args
  end
  def publisher_tag_list(args={})
    path="/publisher/tag/list"
    request path, args
  end
  def publisher_tag_check_rule_access(args={})
    path="/publisher/tag/check/rule/access"
    request path, args
  end
  def publisher_frequency_add(args={})
    path="/publisher/frequency/add"
    request path, args
  end
  def publisher_frequency_delete(args={})
    path="/publisher/frequency/delete"
    request path, args
  end
  def publisher_frequency_list(args={})
    path="/publisher/frequency/list"
    request path, args
  end
  def publisher_check_rule_access(args={})
    path="/publisher/check/rule/access"
    request path, args
  end
  def allocation_add(args={})
    path="/allocation/add"
    request path, args
  end
  def allocation_edit(args={})
    path="/allocation/edit"
    request path, args
  end
  def allocation_delete(args={})
    path="/allocation/delete"
    request path, args
  end
  def allocation_list(args={})
    path="/allocation/list"
    request path, args
  end
  def allocation_duplicate(args={})
    path="/allocation/duplicate"
    request path, args
  end
  def allocation_group_add(args={})
    path="/allocation/group/add"
    request path, args
  end
  def allocation_group_edit(args={})
    path="/allocation/group/edit"
    request path, args
  end
  def allocation_group_delete(args={})
    path="/allocation/group/delete"
    request path, args
  end
  def allocation_group_list(args={})
    path="/allocation/group/list"
    request path, args
  end
  def allocation_source_add(args={})
    path="/allocation/source/add"
    request path, args
  end
  def allocation_source_edit(args={})
    path="/allocation/source/edit"
    request path, args
  end
  def allocation_source_delete(args={})
    path="/allocation/source/delete"
    request path, args
  end
  def allocation_source_list(args={})
    path="/allocation/source/list"
    request path, args
  end
  def allocation_update_position(args={})
    path="/allocation/update/position"
    request path, args
  end
  def allocation_resolve_name(args={})
    path="/allocation/resolve/name"
    request path, args
  end
  def allocation_set_archived(args={})
    path="/allocation/set/archived"
    request path, args
  end
  def reports_portfolio_add(args={})
    path="/reports/portfolio/add"
    request path, args
  end
  def reports_portfolio_edit(args={})
    path="/reports/portfolio/edit"
    request path, args
  end
  def reports_portfolio_delete(args={})
    path="/reports/portfolio/delete"
    request path, args
  end
  def reports_portfolio_list(args={})
    path="/reports/portfolio/list"
    request path, args
  end
  def reports_portfolio_schedule_add(args={})
    path="/reports/portfolio/schedule/add"
    request path, args
  end
  def reports_portfolio_schedule_edit(args={})
    path="/reports/portfolio/schedule/edit"
    request path, args
  end
  def reports_portfolio_schedule_delete(args={})
    path="/reports/portfolio/schedule/delete"
    request path, args
  end
  def reports_portfolio_schedule_list(args={})
    path="/reports/portfolio/schedule/list"
    request path, args
  end
  def custom_macro_list(args={})
    path="/custom/macro/list"
    request path, args
  end
  def custom_macro_add(args={})
    path="/custom/macro/add"
    request path, args
  end
  def custom_macro_edit(args={})
    path="/custom/macro/edit"
    request path, args
  end
  def custom_macro_delete(args={})
    path="/custom/macro/delete"
    request path, args
  end
  def custom_macro_attach(args={})
    path="/custom/macro/attach"
    request path, args
  end
  def custom_macro_detach(args={})
    path="/custom/macro/detach"
    request path, args
  end
  def custom_macro_edit_attach(args={})
    path="/custom/macro/edit/attach"
    request path, args
  end
  def location_list(args={})
    path="/location/list"
    request path, args
  end
  def location_check_rule_access(args={})
    path="/location/check/rule/access"
    request path, args
  end
  def location_list_add(args={})
    path="/location/list/add"
    request path, args
  end
  def location_list_edit(args={})
    path="/location/list/edit"
    request path, args
  end
  def location_list_delete(args={})
    path="/location/list/delete"
    request path, args
  end
  def location_list_list(args={})
    path="/location/list/list"
    request path, args
  end
  def location_list_resolve_name(args={})
    path="/location/list/resolve/name"
    request path, args
  end
  def location_list_check_rule_access(args={})
    path="/location/list/check/rule/access"
    request path, args
  end
  def location_list_location_add(args={})
    path="/location/list/location/add"
    request path, args
  end
  def location_list_location_delete(args={})
    path="/location/list/location/delete"
    request path, args
  end
  def location_list_location_list(args={})
    path="/location/list/location/list"
    request path, args
  end
  def statistics(args={})
    path="/statistics"
    request path, args
  end
  def statistics_aggregated(args={})
    path="/statistics/aggregated"
    request path, args
  end
  def summary_domain_list(args={})
    path="/summary/domain/list"
    request path, args
  end
  def summary_fingerprint_list(args={})
    path="/summary/fingerprint/list"
    request path, args
  end
  def summary_media_list(args={})
    path="/summary/media/list"
    request path, args
  end
  def summary_partner_list(args={})
    path="/summary/partner/list"
    request path, args
  end
  def summary_tag_list(args={})
    path="/summary/tag/list"
    request path, args
  end
  def summary_vertical_list(args={})
    path="/summary/vertical/list"
    request path, args
  end
  def summary_order_list(args={})
    path="/summary/order/list"
    request path, args
  end
  def summary_order_line_list(args={})
    path="/summary/order/line/list"
    request path, args
  end
  def summary_creative_list(args={})
    path="/summary/creative/list"
    request path, args
  end
  def summary_creative_campaign_list(args={})
    path="/summary/creative/campaign/list"
    request path, args
  end
  def summary_mobile_carrier_list(args={})
    path="/summary/mobile/carrier/list"
    request path, args
  end
  def summary_mobile_make_list(args={})
    path="/summary/mobile/make/list"
    request path, args
  end
  def site_list_add(args={})
    path="/site/list/add"
    request path, args
  end
  def site_list_edit(args={})
    path="/site/list/edit"
    request path, args
  end
  def site_list_delete(args={})
    path="/site/list/delete"
    request path, args
  end
  def site_list_list(args={})
    path="/site/list/list"
    request path, args
  end
  def site_list_site_add(args={})
    path="/site/list/site/add"
    request path, args
  end
  def site_list_site_delete(args={})
    path="/site/list/site/delete"
    request path, args
  end
  def site_list_site_list(args={})
    path="/site/list/site/list"
    request path, args
  end
  def site_list_check_rule_access(args={})
    path="/site/list/check/rule/access"
    request path, args
  end
  def site_list_resolve_name(args={})
    path="/site/list/resolve/name"
    request path, args
  end
  def comscore_target_list(args={})
    path="/comscore/target/list"
    request path, args
  end
  def comscore_domain_list(args={})
    path="/comscore/domain/list"
    request path, args
  end
  def viewable_check_rule_access(args={})
    path="/viewable/check/rule/access"
    request path, args
  end
  def nielsen_demographic_list(args={})
    path="/nielsen/demographic/list"
    request path, args
  end
  def nielsen_campaign_placement_exposure_list(args={})
    path="/nielsen/campaign/placement/exposure/list"
    request path, args
  end
  def nielsen_ocr_campaign_list(args={})
    path="/nielsen/ocr/campaign/list"
    request path, args
  end
  def contextual_segments_get(args={})
    path="/contextual/segments/get"
    request path, args
  end
  def contextual_segments_resolve_name(args={})
    path="/contextual/segments/resolve/name"
    request path, args
  end
  def contextual_segment_check_rule_access(args={})
    path="/contextual/segment/check/rule/access"
    request path, args
  end
  def qc_advertiser_list(args={})
    path="/qc/advertiser/list"
    request path, args
  end
  def qc_advertiser_check_rule_access(args={})
    path="/qc/advertiser/check/rule/access"
    request path, args
  end
  def qc_advertiser_resolve_name(args={})
    path="/qc/advertiser/resolve/name"
    request path, args
  end
  def deal_add(args={})
    path="/deal/add"
    request path, args
  end
  def deal_edit(args={})
    path="/deal/edit"
    request path, args
  end
  def deal_list(args={})
    path="/deal/list"
    request path, args
  end
  def deal_delete(args={})
    path="/deal/delete"
    request path, args
  end
  def deal_resolve_name(args={})
    path="/deal/resolve/name"
    request path, args
  end
  def deal_check_rule_access(args={})
    path="/deal/check/rule/access"
    request path, args
  end
  def blocklist_add(args={})
    path="/blocklist/add"
    request path, args
  end
  def blocklist_edit(args={})
    path="/blocklist/edit"
    request path, args
  end
  def blocklist_list(args={})
    path="/blocklist/list"
    request path, args
  end
  def blocklist_delete(args={})
    path="/blocklist/delete"
    request path, args
  end
  def blocklist_advertiser_add(args={})
    path="/blocklist/advertiser/add"
    request path, args
  end
  def blocklist_advertiser_delete(args={})
    path="/blocklist/advertiser/delete"
    request path, args
  end
  def blocklist_advertiser_list(args={})
    path="/blocklist/advertiser/list"
    request path, args
  end
  def blocklist_category_add(args={})
    path="/blocklist/category/add"
    request path, args
  end
  def blocklist_category_delete(args={})
    path="/blocklist/category/delete"
    request path, args
  end
  def blocklist_category_list(args={})
    path="/blocklist/category/list"
    request path, args
  end
  def mobile_connection_type_check_rule_access(args={})
    path="/mobile/connection/type/check/rule/access"
    request path, args
  end
  def mobile_carrier_check_rule_access(args={})
    path="/mobile/carrier/check/rule/access"
    request path, args
  end
  def mobile_make_check_rule_access(args={})
    path="/mobile/make/check/rule/access"
    request path, args
  end

  def set_entity(args={})
    path="/set/entity"
    request path, args
  end

  def unset_entity(args={})
    path="/unset/entity"
    request path, args
  end

  def entity_list (args={})
    path ="/entity/list"
    response = request path, args
  end

  def login
    path="/login/"
    password = Digest::MD5.hexdigest(@password)
    response = request path, "username=#{@username}&password=#{password}"

    if(response['liverailapi']['status'] == 'success')
      @auth_token = response['liverailapi']['auth']['token']
    end

    response
  end

  def logout(args={})
    path="/logout"
    request path, args
  end

  def credentials(username, password)
    @username = username
    @password = password
  end

  def config(args)
    @env = args[:env] || 'development'
  end

  private

  def request(path, body)

    body[:token] = @auth_token if @auth_token
    resource = RestClient::Resource.new @url
    response = resource[path].post body

    p response

    response = Crack::XML.parse(response)
    response = JSON.parse(response.to_json)

    if response['liverailapi']['status'] == "fail" && (['6', '2', '5', '15'].include? response['liverailapi']['error'][0] ? response['liverailapi']['error'][0]['code'] : response['liverailapi']['error']['code'])
      response = login
      if response['liverailapi']['status'] == "success" && path != "/login/"
        response = request path, body
      end
    end

    response
  end
end
