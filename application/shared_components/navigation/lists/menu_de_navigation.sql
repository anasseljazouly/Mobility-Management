prompt --application/shared_components/navigation/lists/menu_de_navigation
begin
--   Manifest
--     LIST: Menu de navigation
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(39201916302964874350)
,p_name=>'Menu de navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202112685767874435)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Page d''accueil'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39210109388721999512)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Gestion des \00E9tudiants')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-user'
,p_security_scheme=>wwv_flow_api.id(40105010799939391851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3,12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40271869595724727925)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('Chargement des donn\00E9es des \00E9tudiants')
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-csv-o'
,p_parent_list_item_id=>wwv_flow_api.id(39210109388721999512)
,p_security_scheme=>wwv_flow_api.id(40105010799939391851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39219739131145716403)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Gestion des utilisateurs'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_security_scheme=>wwv_flow_api.id(40101587660492655229)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39338784646431347753)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Gestion des \00E9coles partenaires')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-graduation-cap'
,p_security_scheme=>wwv_flow_api.id(40104905747986725041)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39391380950653161493)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Gestion des pools'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users-alt'
,p_security_scheme=>wwv_flow_api.id(40105010799939391851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39611576022662733354)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Gestion des places'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wheelchair'
,p_security_scheme=>wwv_flow_api.id(40104905747986725041)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'58'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172253418698593739)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Affectation des \00E9coles')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-map'
,p_security_scheme=>wwv_flow_api.id(40105010799939391851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40172588869346954860)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Choix des \00E9coles')
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list-ol'
,p_security_scheme=>wwv_flow_api.id(40103666594248718019)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40304830443487197565)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('Gestion des fili\00E8res')
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tags'
,p_security_scheme=>wwv_flow_api.id(40105010799939391851)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
