prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'Mes choix'
,p_alias=>'MES-CHOIX'
,p_step_title=>'Mes choix'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'HAJAR.DAMI.14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220217112411'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40429252636109208759)
,p_plug_name=>'Mes choix'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CHOISIR_MOBILITE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40429257590560208763)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Appliquer les modifications'
,p_button_position=>'CHANGE'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40429256577221208762)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>'Annuler'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40429257906208208763)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Cr\00E9er')
,p_button_position=>'CREATE'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40429257133729208762)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_image_alt=>'Supprimer'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40429258285936208763)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40429253024385208760)
,p_name=>'P27_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_item_source_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40429253446163208760)
,p_name=>'P27_ID_ETUDIANT_CHOIX'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_item_source_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Etudiant Choix'
,p_source=>'ID_ETUDIANT_CHOIX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40429253838668208761)
,p_name=>'P27_ID_ECOLE_CHOIX'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_item_source_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Ecole Choix'
,p_source=>'ID_ECOLE_CHOIX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202076734350874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40429254213860208761)
,p_name=>'P27_ORDRE_CHOIX'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_item_source_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ordre Choix'
,p_source=>'ORDRE_CHOIX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202078073355874413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40429254622308208761)
,p_name=>'P27_TYPE_MOBILITE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_item_source_plug_id=>wwv_flow_api.id(40429252636109208759)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type Mobilite'
,p_source=>'TYPE_MOBILITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>18
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202078073355874413)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40429259184410208764)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(40429252636109208759)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Traiter le panneau Mes choix'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40429258705723208764)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(40429252636109208759)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialiser le panneau Mes choix'
);
wwv_flow_api.component_end;
end;
/