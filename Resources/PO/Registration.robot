*** Settings ***
Resource             ../../Data/InputData.robot
Library    AppiumLibrary


*** Variables ***
${ENTER_FIRST_NAME}         id=com.linkedin.android:id/growth_join_split_form_first_name
${ENTER_LAST_NAME}          id=com.linkedin.android:id/growth_join_split_form_last_name
${ENTER_EMAIL_ADDRESS}      id=com.linkedin.android:id/growth_join_split_form_email_address
${ENTER_PASSWORD_SIGNUP}    id=com.linkedin.android:id/growth_join_split_form_password

*** Keywords ***


Wait for Element and then Click
    [Arguments]    ${locator}    ${timeout}=30s
    Wait Until Element Is Visible    ${locator}     ${timeout}
    Click Element   ${locator}




Verify Page Loaded
    Wait for Element and then Click     ${SIGNUP_BUTTON}


Enter First name and Last name

    Wait for Element and then Click    ${ENTER_FIRST_NAME}   
    Input Text         ${ENTER_FIRST_NAME}         ${FIRSTNAME}   
    Input Text      ${ENTER_LAST_NAME}        ${LASTNAME}
    Click Element    ${CONTINUE_NAME}


Enter email address 

    Wait for Element and then Click    ${ENTER_EMAIL_ADDRESS}   
    Input Text         ${ENTER_EMAIL_ADDRESS}         ${REGISTRATION_EMAIL}  
    Click Element    ${CONTINUE_EMAIL} 

Enter password
    Wait for Element and then Click    ${ENTER_PASSWORD_SIGNUP}   
    Input Text            ${ENTER_PASSWORD_SIGNUP}         ${REGISTRATION_PASSWORD}   
    Click Element       ${CONTINUE_PASSWORD} 


# Enter Credentials
#     [Arguments]  ${Credentials}
#     run keyword unless  '${Credentials[0]}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
#     run keyword unless  '${Credentials[1]}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}


# Login With Invalid Credentials
#       [Arguments]    ${UserData}
#       Fill Username Field       ${UserData.Username}
#       Fill Password Field    abc
#       Click "Login" Button

# Verify Error Message
#     [Arguments]  ${ExpectedErrorMessage}
#     [Return]  ${ExpectedErrorMessage[2]}


Click "Sign up" Button
    Click Element    ${SIGNUP_BUTTON}   

# Verfiy Next Page
#     Wait for Element and then Click     ${SKIP_FOR_NOW}  



