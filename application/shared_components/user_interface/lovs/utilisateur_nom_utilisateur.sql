prompt --application/shared_components/user_interface/lovs/utilisateur_nom_utilisateur
begin
--   Manifest
--     UTILISATEUR.NOM_UTILISATEUR
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
 p_id=>wwv_flow_api.id(39218732000596298620)
,p_lov_name=>'UTILISATEUR.NOM_UTILISATEUR'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'UTILISATEUR'
,p_return_column_name=>'ID_UTILISATEUR'
,p_display_column_name=>'NOM_UTILISATEUR'
,p_default_sort_column_name=>'NOM_UTILISATEUR'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
