prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'choix du filiere'
,p_alias=>'CHOIX-DU-FILIERE'
,p_page_mode=>'MODAL'
,p_step_title=>'choix du filiere'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'K.GOURAI14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218030208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39083407743181507346)
,p_plug_name=>'choix de filiere'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40632810562255534315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39083407743181507346)
,p_button_name=>'Confirmer'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>'Confirmer'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39083407564324507344)
,p_name=>'P48_ID_POOL_FILIERE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39083407743181507346)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39083407688133507345)
,p_name=>'P48_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39083407743181507346)
,p_prompt=>unistr('Fili\00E8re')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LIBELLE_FILIERE,ID_FILIERE',
'  from FILIERE ',
'  where ID_POOL_FILIERE is null',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40632810682071534316)
,p_name=>'add pool to filiere'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40632810562255534315)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40632810769823534317)
,p_event_id=>wwv_flow_api.id(40632810682071534316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update FILIERE set ID_POOL_FILIERE = :P48_ID_POOL_FILIERE where ID_FILIERE = :P48_NEW;'
,p_attribute_02=>'P48_NEW,P48_ID_POOL_FILIERE'
,p_attribute_05=>'#SQLERRM#'
,p_attribute_15=>'escape-message'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40632810892770534318)
,p_event_id=>wwv_flow_api.id(40632810682071534316)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40632810941471534319)
,p_event_id=>wwv_flow_api.id(40632810682071534316)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
