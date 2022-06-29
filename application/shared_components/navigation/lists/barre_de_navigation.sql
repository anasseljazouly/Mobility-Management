prompt --application/shared_components/navigation/lists/barre_de_navigation
begin
--   Manifest
--     LIST: Barre de navigation
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
 p_id=>wwv_flow_api.id(39202103649436874423)
,p_name=>'Barre de navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202116243927874440)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'A propos de'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(39202106169310874427)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202116769805874441)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Aide de la page'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.::P10011_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(39202116243927874440)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(39202106169310874427)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202117112317874441)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(39202116243927874440)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202117509644874441)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'A propos de la page'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(39202116243927874440)
,p_required_patch=>wwv_flow_api.id(39202106169310874427)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202117844864874441)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202118303446874442)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(39202117844864874441)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39202118741516874442)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Fermer la session'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(39202117844864874441)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
