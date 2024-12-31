*** Settings ***
Resource             ../../Data/InputData.robot
Library    AppiumLibrary


*** Variables ***
${ENTER_EMAIL}    id=com.linkedin.android:id/growth_login_join_fragment_email_address
${ENTER_PASSWORD}    id=com.linkedin.android:id/growth_login_join_fragment_password


*** Keywords ***


Wait for Element and then Click
    [Arguments]    ${locator}    ${timeout}=30s
    Wait Until Element Is Visible    ${locator}     ${timeout}
    Click Element   ${locator}




Verify Page Loaded
    Wait for Element and then Click     ${LOGIN_BUTTON}

Input User email    
    [Arguments]    ${EMAIL}   
    Input Text         ${ENTER_EMAIL}         ${EMAIL}   

Input User Password    
    [Arguments]    ${PASSWORD}   
    Input Text      ${ENTER_PASSWORD}        ${PASSWORD}

Login With Valid Credentials
    Wait for Element and then Click    ${ENTER_EMAIL}  
    Input User email    ${EMAIL} 
    Input User Password    ${PASSWORD}


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


Click "Login" Button
    Click Element    ${LOGIN_SUBMIT}   

Verfiy Next Page
    Wait for Element and then Click     ${SKIP_FOR_NOW}  



