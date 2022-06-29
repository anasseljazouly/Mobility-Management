prompt --application/create_application
begin
--   Manifest
--     FLOW: 52319
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_PROJETSIENSIAS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('Syst\00E8me de gestion des mobilit\00E9s externes'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,unistr('SYST\00C8ME-DE-GESTION-DES-MOBILIT\00C9S-EXTERNES'))
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3424662E01D3006A5039BB28431111A91DB1894DA52D96755D59B14219F08541'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'fr'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(40073388615013792662)
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'#APP_FILES#test.png'
,p_app_builder_icon_name=>'test.png'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Version 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('Syst\00E8me de gestion des mobilit\00E9s externes')
,p_last_updated_by=>'HAJAR.DAMI.14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218135711'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>60
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
);
wwv_flow_api.component_end;
end;
/
