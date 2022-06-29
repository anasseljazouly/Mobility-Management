prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>unistr('Chargement des donn\00E9es des \00E9tudiants')
,p_alias=>unistr('CHARGEMENT-DES-DONN\00C9ES-DES-\00C9TUDIANTS')
,p_step_title=>unistr('Chargement des donn\00E9es des \00E9tudiants')
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
,p_last_upd_yyyymmddhh24miss=>'20220217032333'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39612236554738480446)
,p_plug_name=>unistr('Chargement des donn\00E9es des \00E9tudiants')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40271871387935727927)
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
 p_id=>wwv_flow_api.id(40271872146137727927)
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
'select "ID_ANNEE",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P12_ID_ANNEE'', p_values => "ID_ANNEE") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P12_ID_ANNEE,''0'') = "ID_ANNEE"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("ANNEE_EN_COURS", 1, 50)||( case when length("ANNEE_EN_COURS") > 50 then ''...'' end ) list_title,',
'    null list_text,',
'    null list_badge',
'from "ANNEE_ACADEMIQUE" x',
'where (:P12_SEARCH is null',
'        or upper(x."ANNEE_EN_COURS") like ''%''||upper(:P12_SEARCH)||''%''',
'    )',
'order by "ANNEE_EN_COURS"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P12_SEARCH'
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
 p_id=>wwv_flow_api.id(40271872869305727931)
,p_query_column_id=>1
,p_column_alias=>'ID_ANNEE'
,p_column_display_sequence=>1
,p_column_heading=>'ID_ANNEE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271873212569727931)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271873628905727931)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271874042016727932)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271874470433727932)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271874838877727932)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271875261412727932)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271875610927727932)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271876042468727933)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40271876426721727933)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40271881281578728026)
,p_plug_name=>unistr('S\00E9lecteur d''affichage de r\00E9gion')
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P12_ID_ANNEE'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40271881653732728026)
,p_name=>unistr('Pr\00E9vision')
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select col001, col002, col003, col004, col005, col006, col007, col008, col009',
'       -- more columns (col011 to col300) can be selected here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                   p_content                     => f.blob_content,',
'                  p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                  p_file_name                   => f.filename ) ) p',
' where f.name = :P12_FILE'))
,p_display_when_condition=>'P12_ID_ANNEE'
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
 p_id=>wwv_flow_api.id(40284765247819772401)
,p_query_column_id=>1
,p_column_alias=>'COL001'
,p_column_display_sequence=>20
,p_column_heading=>'NOM_UTILISATEUR'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765350616772402)
,p_query_column_id=>2
,p_column_alias=>'COL002'
,p_column_display_sequence=>30
,p_column_heading=>'PRENOM_UTILISATEUR'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765496106772403)
,p_query_column_id=>3
,p_column_alias=>'COL003'
,p_column_display_sequence=>40
,p_column_heading=>'EMAIL_UTILISATEUR'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765502568772404)
,p_query_column_id=>4
,p_column_alias=>'COL004'
,p_column_display_sequence=>50
,p_column_heading=>'CIN_UTILISATEUR'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765600583772405)
,p_query_column_id=>5
,p_column_alias=>'COL005'
,p_column_display_sequence=>60
,p_column_heading=>'CNE_ETUDIANT'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765760293772406)
,p_query_column_id=>6
,p_column_alias=>'COL006'
,p_column_display_sequence=>70
,p_column_heading=>'CODE_APOGEE_ETUDIANT'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765863278772407)
,p_query_column_id=>7
,p_column_alias=>'COL007'
,p_column_display_sequence=>80
,p_column_heading=>'MOYENNE_ETUDIANT'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284765961775772408)
,p_query_column_id=>8
,p_column_alias=>'COL008'
,p_column_display_sequence=>90
,p_column_heading=>'ID_FILIERE_ETUDIANT'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40284767058671772419)
,p_query_column_id=>9
,p_column_alias=>'COL009'
,p_column_display_sequence=>100
,p_column_heading=>'ID_ANNEE_INSCRIPTION'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40271894266964728122)
,p_plug_name=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>70
,p_plug_source=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P12_ID_ANNEE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39612236750458480448)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39612236554738480446)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Chargement des donn\00E9es')
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39612236820590480449)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39612236554738480446)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>'Annuler'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39612236660212480447)
,p_name=>'P12_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39612236554738480446)
,p_prompt=>'Charger un fichier'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('Ajouter un fichier .csv pour charger la liste des \00E9tudiants dans la base de donn\00E9es')
,p_inline_help_text=>'Extensions permises: .csv'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'.csv'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40271871713787727927)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40271871387935727927)
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
 p_id=>wwv_flow_api.id(40271880835168728024)
,p_name=>'P12_ID_ANNEE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39612236554738480446)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40284766997486772418)
,p_validation_name=>'type validation'
,p_validation_sequence=>10
,p_validation=>'lower( :P31_FILE ) like ''%.csv'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Type de fichier insuppartable'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40271881714211728026)
,p_name=>unistr('Bo\00EEte de dialogue ferm\00E9e')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(40271881653732728026)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40271885978839728030)
,p_event_id=>wwv_flow_api.id(40271881714211728026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40271881653732728026)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40271886473678728030)
,p_event_id=>wwv_flow_api.id(40271881714211728026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Chargement des donn\u00E9es des \u00E9tudiants ligne(s) mise(s) \u00E0 jour.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40271895140294728123)
,p_name=>'Effectuez la recherche'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40271896973970728123)
,p_event_id=>wwv_flow_api.id(40271895140294728123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40271872146137727927)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40271897485286728124)
,p_event_id=>wwv_flow_api.id(40271895140294728123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40284766393665772412)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO ETUDIANT_FICHIER (NOM_ETUDIANT_FICHIER,',
'                               PRENOM_ETUDIANT_FICHIER,',
'                               EMAIL_ETUDIANT_FICHIER,',
'                               CIN_ETUDIANT_FICHIER,',
'                               CNE_ETUDIANT_FICHIER,',
'                               CODE_APOGEE_ETUDIANT_FICHIER,',
'                               MOYENNE_ETUDIANT_FICHIER,',
'                               FILIERE_ETUDIANT_FICHIER,',
'                               ANNEE_ETUDIANT_FICHIER)',
'    (SELECT col001,',
'            col002,',
'            col003,',
'            col004,',
'            col005,',
'            col006,',
'            col007,',
'            col008,',
'            col009',
'       FROM apex_application_temp_files f, apex_data_parser.parse      (',
'p_content => f.blob_content,',
'p_skip_rows => 1,',
'p_file_type => apex_data_parser.c_file_type_csv )',
'where f.name = :P12_FILE',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
