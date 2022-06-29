prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>unistr('Affectation des \00E9coles')
,p_alias=>unistr('AFFECTATION-DES-\00C9COLES')
,p_step_title=>unistr('Affectation des \00E9coles')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANASS.ELJAZOULY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218124007'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40784400891854161501)
,p_plug_name=>'listeaffectation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39202002349480874384)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOM_utilisateur,',
'       prenom_utilisateur,',
'       nom_ecole,',
'       TYPE_MOBILITE,',
'       A_ACCEPTE,',
'       A_DESISTE',
'  from AFFECTER_ECOLE join etudiant on id_etudiant= id_etudiant_affectation join utilisateur on ',
'  id_etudiant_utilisateur= id_utilisateur join ecole on id_ecole=id_ecole_affectation',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'listeaffectation'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401198576161504)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401490905161507)
,p_name=>'TYPE_MOBILITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_MOBILITE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type Mobilite'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>72
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401541805161508)
,p_name=>'A_ACCEPTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_ACCEPTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401610461161509)
,p_name=>'A_DESISTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_DESISTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401720393161510)
,p_name=>'NOM_UTILISATEUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_UTILISATEUR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nom Utilisateur'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401891018161511)
,p_name=>'NOM_ECOLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_ECOLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nom Ecole'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>1020
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40784401918428161512)
,p_name=>'PRENOM_UTILISATEUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRENOM_UTILISATEUR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Prenom Utilisateur'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(40784401099131161503)
,p_internal_uid=>40784401099131161503
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(40785582166841181280)
,p_interactive_grid_id=>wwv_flow_api.id(40784401099131161503)
,p_static_id=>'407855822'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(40785582356349181281)
,p_report_id=>wwv_flow_api.id(40785582166841181280)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40785582881776181282)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(40784401198576161504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40785585542414181288)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(40784401490905161507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40785586473649181289)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(40784401541805161508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40785587390448181291)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(40784401610461161509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40788265693863304266)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(40784401918428161512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40788301081404960376)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(40784401720393161510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40788301830281960378)
,p_view_id=>wwv_flow_api.id(40785582356349181281)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(40784401891018161511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40632810258667534312)
,p_button_sequence=>10
,p_button_name=>unistr('Affecter_les_\00E9coles')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>unistr('Affecter Les \00C9coles')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40632810396090534313)
,p_name=>'affecter'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40632810258667534312)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40632810404102534314)
,p_event_id=>wwv_flow_api.id(40632810396090534313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'CURSOR cursor_students is select distinct ID_ETUDIANT,ID_FILIERE_ETUDIANT,MOYENNE_ETUDIANT FROM ETUDIANT inner join choisir_mobilite on id_etudiant = id_etudiant_choix  ORDER BY MOYENNE_ETUDIANT DESC;',
'occ_ecole number;',
'nbr_places number;',
'affected number;',
'begin',
'DELETE FROM affecter_ecole;',
'for student in cursor_students loop',
'    declare',
'        CURSOR cursor_choices is select cm.ID_ETUDIANT_CHOIX,cm.ID_ECOLE_CHOIX,cm.ORDRE_CHOIX,cm.TYPE_MOBILITE',
'         from (choisir_mobilite cm join offrir_places o',
'        on cm.ID_ECOLE_CHOIX = o.ID_ECOLE_PLACES) join filiere f on  f.ID_POOL_FILIERE = o.ID_POOL_PLACES ',
'        where ID_ETUDIANT_CHOIX = student.ID_ETUDIANT and ID_FILIERE = student.ID_FILIERE_ETUDIANT',
'        order by ordre_choix;',
'    begin',
'    affected := 0;',
'    ',
'    for choice in cursor_choices loop',
'    exit when affected > 0;',
'        nbr_places := 0;',
'       select O.NOMBRE_PLACES into nbr_places from OFFRIR_PLACES O JOIN FILIERE F',
'        on F.ID_POOL_FILIERE = O.ID_POOL_PLACES ',
'        where F.ID_FILIERE = student.ID_FILIERE_ETUDIANT ',
'        and choice.id_ecole_choix = O.id_ecole_places;',
'        if nbr_places <> 0 then',
'            occ_ecole := 0;',
'            select count(ID_ECOLE_AFFECTATION) into occ_ecole from AFFECTER_ECOLE where ID_ECOLE_AFFECTATION = choice.ID_ECOLE_CHOIX;',
'            if occ_ecole < nbr_places then',
'                insert into AFFECTER_ECOLE (ID_ETUDIANT_AFFECTATION,',
'                                            ID_ECOLE_AFFECTATION,',
'                                            TYPE_MOBILITE) VALUES (student.ID_ETUDIANT,',
'                                                                    choice.ID_ECOLE_CHOIX,',
'                                                                    choice.TYPE_MOBILITE);',
'            affected := affected+1;',
'            end if;',
'        end if;',
'        ',
'    end loop;',
'    end;',
'end loop; ',
'end;'))
,p_attribute_05=>'#SQLERRM#'
,p_attribute_15=>'escape-message'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40784400944268161502)
,p_event_id=>wwv_flow_api.id(40632810396090534313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40784400891854161501)
);
wwv_flow_api.component_end;
end;
/
