prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>unistr('gestion des fili\00E8res')
,p_alias=>unistr('GESTION-DES-FILI\00C8RES')
,p_step_title=>unistr('gestion des fili\00E8res')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANASS.ELJAZOULY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220217002002'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40302572013478775924)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39202002349480874384)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_FILIERE,',
'       LIBELLE_FILIERE,',
'       NOM_POOL',
'  from FILIERE LEFT join POOL on FILIERE.ID_POOL_FILIERE = POOL.ID_POOL '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(40302572440128775924)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP:P19_ID_FILIERE:\#ID_FILIERE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANASS.ELJAZOULY@GMAIL.COM'
,p_internal_uid=>40302572440128775924
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40302572522409775924)
,p_db_column_name=>'ID_FILIERE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Filiere'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40302572909071775925)
,p_db_column_name=>'LIBELLE_FILIERE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Libelle Filiere'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39083407320135507342)
,p_db_column_name=>'NOM_POOL'
,p_display_order=>12
,p_column_identifier=>'D'
,p_column_label=>'Nom Pool'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40303350589105114188)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'403033506'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_FILIERE:LIBELLE_FILIERE:NOM_POOL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40302573894693775925)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40302572013478775924)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19'
);
wwv_flow_api.component_end;
end;
/
