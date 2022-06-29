prompt --application/shared_components/files/app_icon_css
begin
--   Manifest
--     APP STATIC FILES: 52319
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C28746573742E706E67293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E642D7369';
wwv_flow_api.g_varchar2_table(2) := '7A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234539354235343B0A7D0A2E63656E746572207B0A2020646973706C61793A20626C6F636B';
wwv_flow_api.g_varchar2_table(3) := '3B0A20206D617267696E2D6C6566743A206175746F3B0A20206D617267696E2D72696768743A206175746F3B0A202077696474683A203530253B0A7D0A2363617274207B0A202020206F766572666C6F773A206175746F3B0A7D0A0A0A0A0A0A';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(39202105204186874426)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
