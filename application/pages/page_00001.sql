prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'Page d''accueil'
,p_alias=>'HOME'
,p_step_title=>unistr('Syst\00E8me de gestion des mobilit\00E9s externes')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#320308",endColorstr="#59081c",GradientType=1);}',
'.a-TreeView-row{background: rgb(9,0,0);',
'background: radial-gradient(circle, rgba(9,0,0,1) 0%, rgba(4,0,0,1) 35%, rgba(0,0,0,0.9839286056219363) 100%);}',
'.t-Region-header{background: rgb(245, 245, 245)',
';}',
'.t-Region t-Region--scrollBody lto39104596060804231518_0{background: rgb(245, 245, 245)}',
'.t-Region-bodyWrap{background: url(''#APP_FILES#backg.PNG''); color: aliceblue;}',
'.a-Region-carouselNav a-Tabs{background: rgb(245, 245, 245)}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'HAJAR.DAMI.14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220218094837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39104596060804231518)
,p_plug_name=>'BIENVENU!'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>unistr(' Cette application permet de g\00E9rer les mobilit\00E9s internationales de l\2019ENSIAS')
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39104598497699231542)
,p_plug_name=>'Nos partenaires'
,p_region_template_options=>'#DEFAULT#:js-cycle5s:t-Region--carouselSlide:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(39201960940049874369)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39104598661074231544)
,p_plug_name=>'ENSIAS'
,p_parent_plug_id=>wwv_flow_api.id(39104598497699231542)
,p_region_css_classes=>'app-icon.css'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_FILES#ensias_test.png" with=123px height=350px class="center" ></img>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39104599096270231548)
,p_plug_name=>'phelma'
,p_parent_plug_id=>wwv_flow_api.id(39104598497699231542)
,p_region_css_classes=>'app-icon.css'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_FILES#phelma.jpg" with=123px height=350px class="center" ></img>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39104599120837231549)
,p_plug_name=>unistr('Universit\00E9 de Sherbrooke')
,p_parent_plug_id=>wwv_flow_api.id(39104598497699231542)
,p_region_css_classes=>'app-icon.css'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_FILES#sherb.jpg" with=123px height=350px class="center" ></img>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39104599201773231550)
,p_plug_name=>'ENSIMAG'
,p_parent_plug_id=>wwv_flow_api.id(39104598497699231542)
,p_region_css_classes=>'app-icon.css'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39202006668889874386)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<img src="#APP_FILES#ensimag1.jpg" with=123px height=350px class="center" ></img>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39202113511316874436)
,p_plug_name=>unistr('Syst\00E8me de gestion des mobilit\00E9s externes')
,p_region_css_classes=>'app-icon.css'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39201984547805874377)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
