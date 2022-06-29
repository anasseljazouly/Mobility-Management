prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'Gestion des pools'
,p_alias=>'GESTION-DES-POOLS1'
,p_step_title=>'Gestion des pools'
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
'}',
'.t-Header{background: rgb(50,3,8);',
'background: -moz-radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'background: -webkit-radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'background: radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#320308",endColorstr="#59081c",GradientType=1);',
'}',
'.t-Header-branding{background: rgb(50,3,8);',
'background: -moz-radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'background: -webkit-radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'background: radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#320308",endColorstr="#59081c",GradientType=1);',
'}',
'.t-Body-nav{background: rgb(50,3,8);',
'background: -moz-radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'background: -webkit-radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'background: radial-gradient(circle, rgba(50,3,8,1) 0%, rgba(1,2,19,1) 35%, rgba(89,8,28,0.9839286056219363) 100%);',
'filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#320308",endColorstr="#59081c",GradientType=1);}'))
,p_step_template=>wwv_flow_api.id(39201919570012874352)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'K.GOURAI14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218041407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39391381351242161493)
,p_plug_name=>'Gestion des pools'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_api.id(39201984547805874377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39391382510284161494)
,p_plug_name=>'Search'
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
 p_id=>wwv_flow_api.id(39391383398005161495)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(39201953670979874366)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID_POOL",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P46_ID_POOL'', p_values => "ID_POOL") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P46_ID_POOL,''0'') = "ID_POOL"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("NOM_POOL", 1, 50)||( case when length("ID_POOL") > 50 then ''...'' end ) list_title,',
'    null list_text,',
'    null list_badge',
'from "POOL" x',
'where (:P46_SEARCH is null',
'        or upper(x."ID_POOL") like ''%''||upper(:P46_SEARCH)||''%''',
'    )',
'order by "ID_POOL"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P46_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(39202041012522874398)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391384083969161497)
,p_query_column_id=>1
,p_column_alias=>'ID_POOL'
,p_column_display_sequence=>1
,p_column_heading=>'ID_POOL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391384426550161497)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391384827409161497)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391385279660161498)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391385675531161498)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391386041375161498)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391386495349161498)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391386813970161499)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391387222401161499)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391387633185161499)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39391388014799161589)
,p_name=>unistr('Pool concern\00E9')
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'POOL'
,p_query_where=>'"ID_POOL" = :P46_ID_POOL'
,p_include_rowid_column=>false
,p_display_when_condition=>'P46_ID_POOL'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(39202047245299874401)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391388630500161590)
,p_query_column_id=>1
,p_column_alias=>'ID_POOL'
,p_column_display_sequence=>1
,p_column_heading=>'Id Pool'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "POOL"',
'where "ID_POOL" is not null',
'and "ID_POOL" = :P46_ID_POOL'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391389053299161590)
,p_query_column_id=>2
,p_column_alias=>'NOM_POOL'
,p_column_display_sequence=>2
,p_column_heading=>'Nom du pool'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "POOL"',
'where "NOM_POOL" is not null',
'and "ID_POOL" = :P46_ID_POOL'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39391391388347161595)
,p_plug_name=>'Region Display Selector'
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
,p_plug_display_when_condition=>'P46_ID_POOL'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39391391797679161595)
,p_name=>unistr('Fili\00E8res')
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_FILIERE,',
'       LIBELLE_FILIERE,',
'       ID_POOL_FILIERE',
'  from FILIERE',
' where "ID_POOL_FILIERE" = :P46_ID_POOL'))
,p_display_when_condition=>'P46_ID_POOL'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(39202044201984874399)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391392510181161596)
,p_query_column_id=>1
,p_column_alias=>'ID_FILIERE'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:RP:P48_ID_FILIERE:#ID_FILIERE#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_report_column_width=>32
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39391393303723161596)
,p_query_column_id=>2
,p_column_alias=>'LIBELLE_FILIERE'
,p_column_display_sequence=>3
,p_column_heading=>unistr('Fili\00E8re')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104597823582231536)
,p_query_column_id=>3
,p_column_alias=>'ID_POOL_FILIERE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39391504327105161683)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P46_ID_POOL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39391495357563161599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39391391797679161595)
,p_button_name=>'POP_FILIERE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39202078517206874413)
,p_button_image_alt=>unistr('Add Fili\00E9res')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48:P48_ID_POOL_FILIERE:&P46_ID_POOL.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39391504835610161684)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39391388014799161589)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_image_alt=>'Edit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:RP,47:P47_ID_POOL:&P46_ID_POOL.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39391381878104161494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39391381351242161493)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:46:&APP_SESSION.:RESET:&DEBUG.:RP,46::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39391382287685161494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39391381351242161493)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:RP,47::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39391382931373161494)
,p_name=>'P46_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39391382510284161494)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
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
 p_id=>wwv_flow_api.id(39391390943008161594)
,p_name=>'P46_ID_POOL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39391388014799161589)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39391505124421161684)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39391388014799161589)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39391505712787161684)
,p_event_id=>wwv_flow_api.id(39391505124421161684)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39391388014799161589)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39391506241084161684)
,p_event_id=>wwv_flow_api.id(39391505124421161684)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Les pools row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39391391843678161595)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39391391797679161595)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39391496015293161599)
,p_event_id=>wwv_flow_api.id(39391391843678161595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39391391797679161595)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39391496546480161600)
,p_event_id=>wwv_flow_api.id(39391391843678161595)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Fili\u00E9res row(s) updated.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39391505265281161684)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39391507063049161685)
,p_event_id=>wwv_flow_api.id(39391505265281161684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39391383398005161495)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39391507576783161685)
,p_event_id=>wwv_flow_api.id(39391505265281161684)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/
