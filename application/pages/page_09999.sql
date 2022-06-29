prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(39202103933069874424)
,p_name=>'Page de connexion'
,p_alias=>'LOGIN'
,p_step_title=>unistr('Syst\00E8me de gestion des mobilit\00E9s externes - Connexion')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-PageBody--login {',
'background: url(''#APP_IMAGES#background.png'');',
'background-repeat: no-repeat;',
'background-size: cover;',
'}',
'',
'.t-Login-logo {',
'    background: url(''#APP_IMAGES#ensias.png'');',
'    background-repeat: no-repeat;',
'    background-size: contain;',
'    width: var(--ut-login-logo-size, 5rem);',
'}',
'',
'.t-Button--hot{',
'    --a-button-background-color: #0c0c0c;',
'    --a-button-hover-background-color: #5b5b5b;',
'    --a-button-active-background-color: #5b5b5b;',
'}    ',
'',
'',
'@media only screen and (max-width: 480px) {',
'.t-PageBody--login .t-Body {',
'margin-top: 40px; /* Add some space at the top to be able to see the background image */',
'background-color: transparent; /* Prevent white background on mobile */',
'}',
'}'))
,p_step_template=>wwv_flow_api.id(39201927282263874355)
,p_page_template_options=>'#DEFAULT#:t-LoginPage--bg1'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'ANASS.ELJAZOULY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220216085113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39202107940720874431)
,p_plug_name=>unistr('Syst\00E8me de gestion des mobilit\00E9s externes')
,p_plug_template=>wwv_flow_api.id(39202004143685874385)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39202110753695874433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39202107940720874431)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39202079248974874413)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ouvrir une session'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39202108321925874432)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39202107940720874431)
,p_prompt=>'Nom utilisateur'
,p_placeholder=>'Nom utilisateur'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202076433663874412)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39202108706960874432)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39202107940720874431)
,p_prompt=>'Mot de passe'
,p_placeholder=>'Mot de passe'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39202076433663874412)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39202109891168874433)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39202107940720874431)
,p_prompt=>unistr('M\00E9moriser le nom utilisateur')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(39202109010547874432)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(39202076433663874412)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('Si vous cochez cette case, l''application enregistre votre nom utilisateur dans un cookie de navigateur persistant nomm\00E9 "LOGIN_USERNAME_COOKIE".'),
unistr('Lors de votre prochain acc\00E8s \00E0 la page de connexion,'),
unistr('cette valeur est automatiquement renseign\00E9e dans le champ de nom utilisateur.'),
'</p>',
'<p>',
unistr('Si vous d\00E9sactivez cette case \00E0 cocher et que votre nom utilisateur est d\00E9j\00E0 enregistr\00E9 dans le cookie,'),
'l''application le remplace par une valeur vide.',
unistr('Vous pouvez \00E9galement utiliser les outils de d\00E9veloppement de votre navigateur pour enlever enti\00E8rement le cookie.'),
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39202111578257874434)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('D\00E9finir le cookie de nom utilisateur')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39202111166392874434)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39202112395597874434)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Effacer le cache des pages'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39202111920544874434)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtenir le cookie de nom utilisateur'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
