prompt --application/shared_components/security/authorizations/droits_d_administration
begin
--   Manifest
--     SECURITY SCHEME: Droits d'administration
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(39202106759799874427)
,p_name=>'Droits d''administration'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>unistr('Privil\00E8ges insuffisants, l''utilisateur n''est pas un administrateur')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
