prompt --application/shared_components/logic/application_items/id_utilisateur
begin
--   Manifest
--     APPLICATION ITEM: ID_UTILISATEUR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(40296849060435489354)
,p_name=>'ID_UTILISATEUR'
,p_protection_level=>'N'
);
wwv_flow_api.component_end;
end;
/
