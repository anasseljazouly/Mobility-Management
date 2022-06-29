prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>unistr('Choix des \00E9coles')
,p_alias=>unistr('CHOIX-DES-\00C9COLES')
,p_step_title=>unistr('Choix des \00E9coles')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'K.GOURAI14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218040343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39891127653344373412)
,p_plug_name=>unistr('Les \00E9coles disponibles')
,p_region_name=>'ID_ECOLE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39202002349480874384)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'ECOLE'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Les \00E9coles disponibles')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(39891127729525373413)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HAJAR.DAMI.14@GMAIL.COM'
,p_internal_uid=>39891127729525373413
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39891127867303373414)
,p_db_column_name=>'ID_ECOLE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Ecole'
,p_column_html_expression=>'<span>#ID_ECOLE#</span>'
,p_column_type=>'NUMBER'
,p_static_id=>'ID_ECOLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39891127945454373415)
,p_db_column_name=>'NOM_ECOLE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nom'
,p_column_type=>'STRING'
,p_static_id=>'NOM_ECOLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39891128020157373416)
,p_db_column_name=>'PAYS_ECOLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Pays'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39891128165618373417)
,p_db_column_name=>'VILLE_ECOLE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39891129582140373431)
,p_db_column_name=>'ROWID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_static_id=>'ROWID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40217415088278979170)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'402174151'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ECOLE:NOM_ECOLE:PAYS_ECOLE:VILLE_ECOLE:ROWID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40284770073260772449)
,p_plug_name=>'Mes Choix'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39202002349480874384)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ordre_choix,nom_ecole,pays_ecole, ville_ecole from choisir_mobilite join ecole on id_ecole = ID_ECOLE_CHOIX',
' where ID_ETUDIANT_CHOIX = (select ID_ETUDIANT ',
'                                                            from ETUDIANT ',
'                                                            where ID_ETUDIANT_UTILISATEUR = TO_NUMBER(APEX_UTIL.get_session_state(''ID_UTILISATEUR'')))',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Mes Choix'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(40632809569659534305)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'K.GOURAI14@GMAIL.COM'
,p_internal_uid=>40632809569659534305
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40632810041548534310)
,p_db_column_name=>'ORDRE_CHOIX'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Ordre Choix'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40632809687646534306)
,p_db_column_name=>'NOM_ECOLE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Nom'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40632809867564534308)
,p_db_column_name=>'PAYS_ECOLE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Pays '
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40632809921585534309)
,p_db_column_name=>'VILLE_ECOLE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40634571507360572962)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'406345716'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOM_ECOLE:PAYS_ECOLE:VILLE_ECOLE:ORDRE_CHOIX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39891128604495373422)
,p_button_sequence=>50
,p_button_name=>'Enregistrer'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enregistrer'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39891129973373373435)
,p_name=>'P9_NEW'
,p_item_sequence=>10
,p_source=>'P9_NEW:=ID_ECOLE'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40471054454932288514)
,p_name=>'P9_NEW_1'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40632810158055534311)
,p_name=>'P9_NEW_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40284770073260772449)
,p_prompt=>'Mes choix'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40227405291798223901)
,p_name=>'drag and drop'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40227405395637223902)
,p_event_id=>wwv_flow_api.id(40227405291798223901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.DRAG_AND_DROP_LIST'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39891127653344373412)
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config)',
'{config.groupSelector=''tbody'';',
'config.itemSelector=''tr:not(:first-child)'';',
'config.dataIdFn=function(item)',
'{',
'    return item.querySelector(''td[headers="ID_ECOLE"] span'').dataset.id;',
'}',
'}'))
,p_attribute_01=>'swap'
,p_attribute_02=>'javascript'
,p_attribute_05=>'console.log("teeest");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40471054112135288511)
,p_name=>'Nouveau'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39891128604495373422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40471054283062288512)
,p_event_id=>wwv_flow_api.id(40471054112135288511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tbody = document.getElementsByTagName(''tbody'')[0];',
'var length = document.getElementsByTagName(''tbody'')[0].childElementCount;',
'var array = [];',
'for(var index=1;index<length;index++){',
'var childi = document.getElementsByTagName(''tbody'')[0].children[index] ;',
'array.push(childi.children[0].getElementsByTagName(''span'')[0].innerHTML);',
'console.log(childi.children[0].getElementsByTagName(''span'')[0].innerHTML);',
'}',
'$("input[id=''P9_NEW_1'']").val(array);',
'',
'console.log($("input[name=''P9_NEW_1'']").val());',
'',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40471058057323288550)
,p_event_id=>wwv_flow_api.id(40471054112135288511)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_list varchar2(32767);',
't_vals apex_t_varchar2;',
'student_id ETUDIANT.ID_ETUDIANT%TYPE;',
'id_ecole ECOLE.ID_ECOLE%TYPE;',
'student_id_exist  ETUDIANT.ID_ETUDIANT%TYPE;',
'begin',
'--get student id',
'select ID_ETUDIANT into student_id',
'from ETUDIANT',
'where ID_ETUDIANT_UTILISATEUR = TO_NUMBER(APEX_UTIL.get_session_state(''ID_UTILISATEUR''));',
'--checks if the student exist',
'BEGIN',
'--student_id_exist := 0;',
'select ID_ETUDIANT_CHOIX into student_id_exist from CHOISIR_MOBILITE where ID_ETUDIANT_CHOIX = student_id and ROWNUM <=1;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'    student_id_exist := 0;',
'END;',
'if student_id_exist <> 0 then',
'DELETE FROM CHOISIR_MOBILITE where ID_ETUDIANT_CHOIX = student_id;',
'end if;',
'--get values from js',
'l_list := :P9_NEW_1;',
'--split and select into t_vals (table of values)',
'SELECT COLUMN_VALUE',
'BULK COLLECT INTO t_vals',
'FROM TABLE (apex_string.split (l_list, '',''));',
'--loop to insert into while converting to number',
'for i in 1..t_vals.count loop',
'    select ID_ECOLE into id_ecole from ECOLE where ID_ECOLE = TO_NUMBER(t_vals(i));',
'    insert into CHOISIR_MOBILITE (ID_ETUDIANT_CHOIX,',
'                                    ID_ECOLE_CHOIX,',
'                                    ORDRE_CHOIX,',
'                                    TYPE_MOBILITE) VALUES (student_id,',
'                                                            id_ecole,',
'                                                            i,',
'                                                            ''Double Diplomation'');',
'end loop;',
'--',
'end;'))
,p_attribute_02=>'P9_NEW_1'
,p_attribute_05=>'#SQLERRM#'
,p_attribute_15=>'escape-message'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40632809759547534307)
,p_event_id=>wwv_flow_api.id(40471054112135288511)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40284770073260772449)
);
wwv_flow_api.component_end;
end;
/
