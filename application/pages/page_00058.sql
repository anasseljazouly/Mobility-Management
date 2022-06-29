prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>34634934084303539451
,p_default_application_id=>52319
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJETSIENSIAS'
);
wwv_flow_api.create_page(
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'Gestion des places'
,p_alias=>'GESTION-DES-PLACES1'
,p_step_title=>'Gestion des places'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(39201919570012874352)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'K.GOURAI14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218040932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39611576527062733354)
,p_plug_name=>'Chemin de navigation'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39202018794310874390)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(39201915896480874350)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(39202080824476874414)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39611577996456733356)
,p_plug_name=>'Rechercher'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39611578749446733356)
,p_name=>unistr('Enregistrements ma\00EEtre')
,p_template=>wwv_flow_api.id(39201953670979874366)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID_ECOLE",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P58_ID_ECOLE'', p_values => "ID_ECOLE") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P58_ID_ECOLE,''0'') = "ID_ECOLE"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("NOM_ECOLE", 1, 50)||( case when length("NOM_ECOLE") > 50 then ''...'' end ) list_title,',
'    substr("NOM_ECOLE", 1, 50)||( case when length("NOM_ECOLE") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "ECOLE" x',
'where (:P58_SEARCH is null',
'        or upper(x."NOM_ECOLE") like ''%''||upper(:P58_SEARCH)||''%''',
'        or upper(x."NOM_ECOLE") like ''%''||upper(:P58_SEARCH)||''%''',
'    )',
'order by "NOM_ECOLE"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P58_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(39202041012522874398)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('<div class="u-tC">Aucune donn\00E9e n''a \00E9t\00E9 trouv\00E9e.</div>')
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611579449704733358)
,p_query_column_id=>1
,p_column_alias=>'ID_ECOLE'
,p_column_display_sequence=>1
,p_column_heading=>'ID_ECOLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611579816174733359)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611580288105733359)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611580607428733359)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611581017151733359)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611581409982733360)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611581816963733360)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611582228350733360)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611582637366733360)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611583009167733361)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39611583549913733443)
,p_name=>unistr('Infos de l''\00E9cole partenaire')
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ECOLE'
,p_query_where=>'"ID_ECOLE" = :P58_ID_ECOLE'
,p_include_rowid_column=>false
,p_display_when_condition=>'P58_ID_ECOLE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(39202047245299874401)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611584213849733443)
,p_query_column_id=>1
,p_column_alias=>'ID_ECOLE'
,p_column_display_sequence=>1
,p_column_heading=>'Id Ecole'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ECOLE"',
'where "ID_ECOLE" is not null',
'and "ID_ECOLE" = :P58_ID_ECOLE'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611584632480733443)
,p_query_column_id=>2
,p_column_alias=>'NOM_ECOLE'
,p_column_display_sequence=>2
,p_column_heading=>'Nom'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ECOLE"',
'where "NOM_ECOLE" is not null',
'and "ID_ECOLE" = :P58_ID_ECOLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611585095546733444)
,p_query_column_id=>3
,p_column_alias=>'PAYS_ECOLE'
,p_column_display_sequence=>3
,p_column_heading=>'Pays'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ECOLE"',
'where "PAYS_ECOLE" is not null',
'and "ID_ECOLE" = :P58_ID_ECOLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611585470869733444)
,p_query_column_id=>4
,p_column_alias=>'VILLE_ECOLE'
,p_column_display_sequence=>4
,p_column_heading=>'Ville'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ECOLE"',
'where "VILLE_ECOLE" is not null',
'and "ID_ECOLE" = :P58_ID_ECOLE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39611588969147733448)
,p_plug_name=>unistr('S\00E9lecteur d''affichage de r\00E9gion')
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_ID_ECOLE'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39611589358884733448)
,p_name=>'Places offertes'
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'OFFRIR_PLACES'
,p_query_where=>'"ID_ECOLE_PLACES" = :P58_ID_ECOLE'
,p_include_rowid_column=>true
,p_display_when_condition=>'P58_ID_ECOLE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(39202044201984874399)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('Aucune donn\00E9e n''a \00E9t\00E9 trouv\00E9e.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611590036720733490)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Modifier</span>'
,p_column_link=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:RP:P60_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Modifier"><span class="fa fa-edit" aria-hidden="true" title="Modifier"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611590455428733490)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611590854857733490)
,p_query_column_id=>3
,p_column_alias=>'ID_ECOLE_PLACES'
,p_column_display_sequence=>3
,p_column_heading=>'Id Ecole Places'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611591214733733491)
,p_query_column_id=>4
,p_column_alias=>'ID_POOL_PLACES'
,p_column_display_sequence=>4
,p_column_heading=>'Pool'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611591675338733491)
,p_query_column_id=>5
,p_column_alias=>'NOMBRE_PLACES'
,p_column_display_sequence=>5
,p_column_heading=>'Nombre Places'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39611592054040733491)
,p_query_column_id=>6
,p_column_alias=>'TYPE_MOBILITE'
,p_column_display_sequence=>6
,p_column_heading=>'Type Mobilite'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39611606176857733547)
,p_plug_name=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P58_ID_ECOLE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39611594960488733494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39611589358884733448)
,p_button_name=>'POP_OFFRIR_PLACES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39202078517206874413)
,p_button_image_alt=>'Ajouter Offrir Places'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:RP,60:P60_ID_ECOLE_PLACES:&P58_ID_ECOLE.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39611606644678733547)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39611583549913733443)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_image_alt=>'Modifier'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:59:&APP_SESSION.::&DEBUG.:RP,59:P59_ID_ECOLE:&P58_ID_ECOLE.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39611577213903733355)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39611576527062733354)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_image_alt=>unistr('R\00E9initialiser')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&APP_SESSION.:RESET:&DEBUG.:RP,58::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39611577692240733356)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39611576527062733354)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Cr\00E9er')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:59:&APP_SESSION.::&DEBUG.:RP,59::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39611578318544733356)
,p_name=>'P58_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39611577996456733356)
,p_prompt=>'Rechercher'
,p_placeholder=>'Rechercher...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(39202076433663874412)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39611588579517733447)
,p_name=>'P58_ID_ECOLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39611583549913733443)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39611606948944733547)
,p_name=>unistr('Bo\00EEte de dialogue ferm\00E9e')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39611583549913733443)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39611607560598733548)
,p_event_id=>wwv_flow_api.id(39611606948944733547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39611583549913733443)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39611608013694733548)
,p_event_id=>wwv_flow_api.id(39611606948944733547)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Ecole ligne(s) mise(s) \u00E0 jour.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39611589435461733449)
,p_name=>unistr('Bo\00EEte de dialogue ferm\00E9e')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39611589358884733448)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39611595627436733494)
,p_event_id=>wwv_flow_api.id(39611589435461733449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39611589358884733448)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39611596145636733495)
,p_event_id=>wwv_flow_api.id(39611589435461733449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Offrir Places ligne(s) mise(s) \u00E0 jour.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39611607076552733547)
,p_name=>'Effectuez la recherche'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39611608819208733548)
,p_event_id=>wwv_flow_api.id(39611607076552733547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39611578749446733356)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39611609319972733548)
,p_event_id=>wwv_flow_api.id(39611607076552733547)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/
