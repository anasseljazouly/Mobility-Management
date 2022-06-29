prompt --application/shared_components/security/authorizations/service_scolarite
begin
--   Manifest
--     SECURITY SCHEME: SERVICE_SCOLARITE
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
 p_id=>wwv_flow_api.id(40105010799939391851)
,p_name=>'SERVICE_SCOLARITE'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'roll VARCHAR2(255);',
'BEGIN',
'roll:=APEX_UTIL.GET_SESSION_STATE(''PROFIL'');',
'',
'if roll=''SERVICE_SCOLARITE'' THEN RETURN true;',
'else return false;',
'end if;',
'end;'))
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
