*** Settings ***
Library    AppiumLibrary
Resource        ../../Data/InputData.robot


*** Keywords ***
Wait for Element and then Click
    [Arguments]    ${locator}    ${timeout}=30s
    Wait Until Element Is Visible    ${locator}     ${timeout}
    Click Element   ${locator}

Go to profile
    Wait for Element and then Click     ${PROFILE_BUTTON}

Go to Settings 
    Wait for Element and then Click        ${SETTING_BUTTON}
    
Signout 
    Sleep    10s
    Scroll Down    ${SIGNOUT_BUTTON}
    Click Element      ${SIGNOUT_BUTTON}

    
