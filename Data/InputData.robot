*** Variables ***
# **OpenApplication**

${APPIUM_URL}   http://localhost:4723/wd/hub
${PLATFORM}     Android
${DEVICE_NAME}  emulator-5554
${LINKEDIN_APPLICATION_ID}      com.linkedin.android
${AUTOMATOR}    UiAutomator2
${LINKEDIN_APPLICATION_ACTIVITY}     com.linkedin.android.authenticator.LaunchActivity

# **LoginActivity**

${LOGIN_ACTIVITY}     com.linkedin.android.lioneclicklogin.LiOneClickLoginInitActivity
${LOGIN_BUTTON}     id=com.linkedin.android:id/growth_prereg_fragment_login_button
${EMAIL}    alaa.abdo2121abdo@gmail.com
${PASSWORD}    6Aw812xvc@@ 
${LOGIN_SUBMIT}    id=com.linkedin.android:id/growth_login_fragment_sign_in
${SKIP_FOR_NOW}    id=com.linkedin.android:id/notif_permission_signin_text

# **SignUpActivity**

${FIRSTNAME}    Alaa
${LASTNAME}    Abdo 
${REGISTRATION_EMAIL}    layan.asoo12@gmail.com
${REGISTRATION_PASSWORD}    6Aw812xvc@@!!
${REGISTRATION_CONTINUE_BUTTON}    id=com.linkedin.android:id/growth_join_split_form_join_button
${SIGNUP_BUTTON}     id=com.linkedin.android:id/growth_prereg_fragment_join_button
${CONTINUE_NAME}    id=com.linkedin.android:id/growth_join_split_form_join_button
${CONTINUE_EMAIL}    id=com.linkedin.android:id/growth_join_split_form_join_button
${CONTINUE_PASSWORD}    id=com.linkedin.android:id/growth_join_split_form_join_button

# **Signout**
${PROFILE_BUTTON}    id=com.linkedin.android:id/me_launcher
${SETTING_BUTTON}    id=com.linkedin.android:id/home_nav_premium_upsell_text_view
${ACCOUNT}           id=ACCOUNT
${SIGNOUT_BUTTON}    id=sign_out


# **AddPost**
${ADD_POST_BUTTON}    id=com.linkedin.android:id/tab_post
${POST_SPACE}    id=com.linkedin.android:id/share_compose_text_input_entities
${POST_TEXT}      I'm looking for a QA job
${POST_BUTTON}    id=com.linkedin.android:id/share_compose_post_button
