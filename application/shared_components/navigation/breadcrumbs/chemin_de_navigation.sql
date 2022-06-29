prompt --application/shared_components/navigation/breadcrumbs/chemin_de_navigation
begin
--   Manifest
--     MENU: Chemin de navigation
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(39201915896480874350)
,p_name=>'Chemin de navigation'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(39201916026144874350)
,p_short_name=>'Page d''accueil'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(39611576991889733355)
,p_short_name=>'Gestion des places'
,p_link=>'f?p=&APP_ID.:58:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.component_end;
end;
/
