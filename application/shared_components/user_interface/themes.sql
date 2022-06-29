prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 52319
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(39202082227829874415)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(39201942147194874361)
,p_default_dialog_template=>wwv_flow_api.id(39201936918921874359)
,p_error_template=>wwv_flow_api.id(39201927282263874355)
,p_printer_friendly_template=>wwv_flow_api.id(39201942147194874361)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(39201927282263874355)
,p_default_button_template=>wwv_flow_api.id(39202079248974874413)
,p_default_region_template=>wwv_flow_api.id(39202006668889874386)
,p_default_chart_template=>wwv_flow_api.id(39202006668889874386)
,p_default_form_template=>wwv_flow_api.id(39202006668889874386)
,p_default_reportr_template=>wwv_flow_api.id(39202006668889874386)
,p_default_tabform_template=>wwv_flow_api.id(39202006668889874386)
,p_default_wizard_template=>wwv_flow_api.id(39202006668889874386)
,p_default_menur_template=>wwv_flow_api.id(39202018794310874390)
,p_default_listr_template=>wwv_flow_api.id(39202006668889874386)
,p_default_irr_template=>wwv_flow_api.id(39202002349480874384)
,p_default_report_template=>wwv_flow_api.id(39202044201984874399)
,p_default_label_template=>wwv_flow_api.id(39202076734350874412)
,p_default_menu_template=>wwv_flow_api.id(39202080824476874414)
,p_default_calendar_template=>wwv_flow_api.id(39202080927404874414)
,p_default_list_template=>wwv_flow_api.id(39202060642428874406)
,p_default_nav_list_template=>wwv_flow_api.id(39202072419573874410)
,p_default_top_nav_list_temp=>wwv_flow_api.id(39202072419573874410)
,p_default_side_nav_list_temp=>wwv_flow_api.id(39202067058684874408)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(39201955043612874366)
,p_default_dialogr_template=>wwv_flow_api.id(39201952262334874365)
,p_default_option_label=>wwv_flow_api.id(39202076734350874412)
,p_default_required_label=>wwv_flow_api.id(39202078073355874413)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(39202066665201874408)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>71
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
