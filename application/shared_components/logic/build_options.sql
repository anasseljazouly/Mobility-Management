prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 52319
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(39201915290742874349)
,p_build_option_name=>'Mis en commentaire'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(39202106169310874427)
,p_build_option_name=>unistr('Fonctionnalit\00E9: A propos de la page')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'A propos de cette page d''application.'
);
wwv_flow_api.component_end;
end;
/
