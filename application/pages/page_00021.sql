prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>unistr('Modifier \00E9cole')
,p_alias=>unistr('MODIFIER-\00C9COLE')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Modifier une \00E9cole')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'K.GOURAI14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220217050652'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79539384280515214382)
,p_plug_name=>unistr('Modifier les informations de l''\00E9cole ')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select E.*, A.ID_ANNEE_AVOIR',
'from ECOLE E, ANNEE_AVOIR_ECOLE A',
'where E.ID_ECOLE = :P21_ID_ECOLE and A.ID_ECOLE_AVOIR = :P21_ID_ECOLE'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79539385954766214383)
,p_plug_name=>'Boutons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39201955043612874366)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40329269864142214702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79539385954766214383)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>'Annuler'
,p_button_position=>'CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40329270244144214702)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79539385954766214383)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>'Supprimer'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_ID_ECOLE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40329270649246214703)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79539385954766214383)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Appliquer les modifications'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('Voulez-vous vraiment modifier cette \00E9cole?')
,p_confirm_style=>'warning'
,p_button_condition=>'P21_ID_ECOLE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40284767272132772421)
,p_name=>'P21_ID_ECOLE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_item_source_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_source=>'ID_ECOLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40284767315127772422)
,p_name=>'P21_NOM_ECOLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_item_source_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_prompt=>'Nom'
,p_source=>'NOM_ECOLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1020
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40284767479066772423)
,p_name=>'P21_PAYS_ECOLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_item_source_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_prompt=>'Pays'
,p_source=>'PAYS_ECOLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>120
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40284767551040772424)
,p_name=>'P21_VILLE_ECOLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_item_source_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_prompt=>'Ville'
,p_source=>'VILLE_ECOLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>120
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40284767766640772426)
,p_name=>'P21_ID_ANNEE_AVOIR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_item_source_plug_id=>wwv_flow_api.id(79539384280515214382)
,p_source=>'ID_ANNEE_AVOIR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40329273758373214712)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40329269864142214702)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40329274240110214712)
,p_event_id=>wwv_flow_api.id(40329273758373214712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40284768034331772429)
,p_name=>'update ecole'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40329270649246214703)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40284768142767772430)
,p_event_id=>wwv_flow_api.id(40284768034331772429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update ECOLE',
'    set NOM_ECOLE = :P21_NOM_ECOLE,',
'        PAYS_ECOLE = :P21_PAYS_ECOLE,',
'        VILLE_ECOLE = :P21_VILLE_ECOLE',
'    where ID_ECOLE = :P21_ID_ECOLE;',
'end;'))
,p_attribute_02=>'P21_ID_ECOLE,P21_NOM_ECOLE,P21_PAYS_ECOLE,P21_VILLE_ECOLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40284768235198772431)
,p_event_id=>wwv_flow_api.id(40284768034331772429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40284768339077772432)
,p_event_id=>wwv_flow_api.id(40284768034331772429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40284769623729772445)
,p_name=>'delete ecole'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40329270244144214702)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40284769790099772446)
,p_event_id=>wwv_flow_api.id(40284769623729772445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete from ECOLE where ID_ECOLE = :P21_ID_ECOLE;',
'end;'))
,p_attribute_02=>'P21_ID_ECOLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40284769896882772447)
,p_event_id=>wwv_flow_api.id(40284769623729772445)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40284769983973772448)
,p_event_id=>wwv_flow_api.id(40284769623729772445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40329269134152214701)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(79539384280515214382)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Traiter le panneau Liste des \00E9tudiants')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40329271413134214708)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('Fermer la bo\00EEte de dialogue')
,p_attribute_01=>'REQUEST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40329268785760214701)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(79539384280515214382)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialiser le panneau Liste des \00E9tudiants')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
