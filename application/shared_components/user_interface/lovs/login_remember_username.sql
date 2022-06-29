prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
--   Manifest
--     LOGIN_REMEMBER_USERNAME
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(39202109010547874432)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(39202109010547874432)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(39202109477602874432)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('M\00E9moriser le nom utilisateur')
,p_lov_return_value=>'Y'
);
wwv_flow_api.component_end;
end;
/
