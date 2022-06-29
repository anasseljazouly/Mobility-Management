prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>unistr('Gestion des \00E9coles partenaires')
,p_alias=>unistr('GESTION-DES-\00C9COLES-PARTENAIRES')
,p_step_title=>unistr('Gestion des \00E9coles partenaires')
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
,p_last_upd_yyyymmddhh24miss=>'20220217051055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39338785036368347753)
,p_plug_name=>unistr('Gestion des \00E9coles partenaires')
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
 p_id=>wwv_flow_api.id(39338786246468347755)
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
 p_id=>wwv_flow_api.id(39338787089626347756)
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
'    apex_page.get_url(p_items => ''P24_ID_ANNEE'', p_values => "ID_ANNEE") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P24_ID_ANNEE,''0'') = "ID_ANNEE"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("ANNEE_EN_COURS", 1, 50)||( case when length("ANNEE_EN_COURS") > 50 then ''...'' end ) list_title,',
'    substr("ID_ANNEE", 1, 50)||( case when length("ID_ANNEE") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "ANNEE_ACADEMIQUE" x',
'where (:P24_SEARCH is null',
'        or upper(x."ANNEE_EN_COURS") like ''%''||upper(:P24_SEARCH)||''%''',
'        or upper(x."ID_ANNEE") like ''%''||upper(:P24_SEARCH)||''%''',
'    )',
'order by "ANNEE_EN_COURS"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_SEARCH'
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
 p_id=>wwv_flow_api.id(39338787740779347760)
,p_query_column_id=>1
,p_column_alias=>'ID_ANNEE'
,p_column_display_sequence=>1
,p_column_heading=>'ID_ANNEE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338788136580347761)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338788599666347761)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338788933578347761)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338789353995347761)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338789742735347762)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338790131536347762)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338790551513347762)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104597229646231530)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>20
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39338791308815347763)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39338792291881347854)
,p_name=>unistr('Infos de l''ann\00E9e en cours')
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ANNEE,',
'       ANNEE_EN_COURS,',
'       SEUIL_ANNEE',
'  from ANNEE_ACADEMIQUE',
' where "ID_ANNEE" = :P24_ID_ANNEE'))
,p_display_when_condition=>'P24_ID_ANNEE'
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
 p_id=>wwv_flow_api.id(39338792806639347855)
,p_query_column_id=>1
,p_column_alias=>'ID_ANNEE'
,p_column_display_sequence=>1
,p_column_heading=>'Id Annee'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ANNEE_ACADEMIQUE"',
'where "ID_ANNEE" is not null',
'and "ID_ANNEE" = :P24_ID_ANNEE'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104597968724231537)
,p_query_column_id=>2
,p_column_alias=>'ANNEE_EN_COURS'
,p_column_display_sequence=>11
,p_column_heading=>unistr('Ann\00E9e en cours')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104598000644231538)
,p_query_column_id=>3
,p_column_alias=>'SEUIL_ANNEE'
,p_column_display_sequence=>21
,p_column_heading=>unistr('Seuil de s\00E9lection')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39338796559538347861)
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
,p_plug_display_when_condition=>'P24_ID_ANNEE'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39338796917012347861)
,p_name=>'Ecoles Partenaires'
,p_template=>wwv_flow_api.id(39202006668889874386)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select E.*, A.ID_ANNEE_AVOIR',
'from ECOLE E, ANNEE_AVOIR_ECOLE A',
'where A.ID_ECOLE_AVOIR = E.ID_ECOLE and A.ID_ANNEE_AVOIR = :P24_ID_ANNEE'))
,p_display_when_condition=>'P24_ID_ANNEE'
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
 p_id=>wwv_flow_api.id(39338797727456347862)
,p_query_column_id=>1
,p_column_alias=>'ID_ECOLE'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Modifier</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_ID_ECOLE,P21_ID_ANNEE_AVOIR:#ID_ECOLE#,#ID_ANNEE_AVOIR#'
,p_column_linktext=>'<span aria-label="Modifier"><span class="fa fa-edit" aria-hidden="true" title="Modifier"></span></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104596238284231520)
,p_query_column_id=>2
,p_column_alias=>'NOM_ECOLE'
,p_column_display_sequence=>12
,p_column_heading=>'Nom'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104596360169231521)
,p_query_column_id=>3
,p_column_alias=>'PAYS_ECOLE'
,p_column_display_sequence=>22
,p_column_heading=>'Pays'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104596448803231522)
,p_query_column_id=>4
,p_column_alias=>'VILLE_ECOLE'
,p_column_display_sequence=>32
,p_column_heading=>'Ville'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39104598103112231539)
,p_query_column_id=>5
,p_column_alias=>'ID_ANNEE_AVOIR'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39338808336028347955)
,p_plug_name=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39201952262334874365)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>unistr('Aucun enregistrement s\00E9lectionn\00E9')
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P24_ID_ANNEE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39338799890200347866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39338796917012347861)
,p_button_name=>'POP_AJOUTER_ECOLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(39202078517206874413)
,p_button_image_alt=>'Ajouter Ecole'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,26:P26_ID_ANNEE:&P24_ID_ANNEE.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39338808820637347955)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39338792291881347854)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_image_alt=>'Modifier'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP,25:P25_ID_ANNEE:&P24_ID_ANNEE.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39338785514248347754)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39338785036368347753)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_image_alt=>unistr('R\00E9initialiser')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&APP_SESSION.:RESET:&DEBUG.:RP,24::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39338785982918347755)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39338785036368347753)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39202079339028874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Cr\00E9er')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP,25::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39338786635799347755)
,p_name=>'P24_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39338786246468347755)
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
 p_id=>wwv_flow_api.id(39338796105107347859)
,p_name=>'P24_ID_ANNEE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39338792291881347854)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39338809190606347955)
,p_name=>unistr('Bo\00EEte de dialogue ferm\00E9e')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39338792291881347854)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39338809732429347955)
,p_event_id=>wwv_flow_api.id(39338809190606347955)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39338792291881347854)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39338810208847347956)
,p_event_id=>wwv_flow_api.id(39338809190606347955)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Ann\u00E9es ligne(s) mise(s) \u00E0 jour.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39338797016560347861)
,p_name=>unistr('Bo\00EEte de dialogue ferm\00E9e')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39338796917012347861)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39338800562411347866)
,p_event_id=>wwv_flow_api.id(39338797016560347861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39338796917012347861)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39338801057486347866)
,p_event_id=>wwv_flow_api.id(39338797016560347861)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Ecoles ligne(s) mise(s) \u00E0 jour.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39338809219938347955)
,p_name=>'Effectuez la recherche'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39338811040820347956)
,p_event_id=>wwv_flow_api.id(39338809219938347955)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39338787089626347756)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39338811585681347956)
,p_event_id=>wwv_flow_api.id(39338809219938347955)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/
