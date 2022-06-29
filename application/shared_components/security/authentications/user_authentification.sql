prompt --application/shared_components/security/authentications/user_authentification
begin
--   Manifest
--     AUTHENTICATION: user_authentification
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(40073388615013792662)
,p_name=>'user_authentification'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'user_authentification'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function user_authentification',
'(p_username in varchar2,p_password in varchar2)  ',
'return boolean  ',
'as  ',
'v_pw_check NUMBER:=0; ',
'rol VARCHAR2(255);',
'ID_UTILISATEUR NUMBER;',
'begin  ',
'select 1,ROLE_UTILISATEUR,ID_UTILISATEUR',
'into v_pw_check,rol,ID_UTILISATEUR',
'from UTILISATEUR  ',
'where upper(EMAIL_UTILISATEUR) = upper(p_username)  ',
'and PASSWORD_UTILISATEUR = p_password;  ',
'',
'IF v_pw_check=1 then APEX_UTIL.SET_SESSION_STATE(''PROFIL'',rol) ; APEX_UTIL.set_session_state(''ID_UTILISATEUR'',ID_UTILISATEUR);',
'return true; ',
'else return false; ',
'end if; ',
'apex_util.set_authentication_result(0);  ',
'return true;  ',
'exception when no_data_found then  ',
'apex_util.set_authentication_result(4);  ',
'return false;  ',
'',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
