prompt --application/pages/page_10010
begin
--   Manifest
--     PAGE: 10010
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
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'A propos de'
,p_alias=>'HELP'
,p_step_title=>'A propos de'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(39202107032749874428)
,p_required_patch=>wwv_flow_api.id(39202106169310874427)
,p_protection_level=>'C'
,p_help_text=>unistr('L''ensemble du texte d''aide de l''application est accessible \00E0 partir de cette page. Les liens figurant dans la r\00E9gion "Documentation" fournissent une explication bien plus approfondie des fonctions et fonctionnalit\00E9s de l''application.')
,p_last_updated_by=>'K.GOURAI14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220213230828'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39202114731686874439)
,p_plug_name=>'A propos de la page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(39201980391583874376)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>unistr('Le texte concernant cette application peut \00EAtre ins\00E9r\00E9 ici.')
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
