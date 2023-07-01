*** Settings ***
Library                                   SeleniumLibrary
Test Setup                                Open Browser                            ${urladdress}    ${browsertype}
Test Teardown                             Close Browser
*** Variables ***
${urladdress}                             https://practicetestautomation.com/practice-test-login/
${browsertype}                            Mozilla Firefox
${username}                               student
${password}                               Password123

*** Test Cases ***
User Can Click Login Button
    Wait Until Element Is Visible        //*[@id="submit"]
    Click Element                        //*[@id="submit"]
User testing login with valid username and valid password (Positive Test)
    Maximize Browser Window
    Click Element                        //*[@id="submit"]
    Input Text                           //*[@id="username"]                       ${username}
    Input Text                           //*[@id="password"]                       ${password}
    Click Element                        //*[@id="login"]

User testing login with wrong username and valid password (Negative Username Test)
    Maximize Browser Window
    Click Element                        //*[@id="submit"]
    Input Text                           //*[@id="username"]                       students
    Input Text                           //*[@id="password"]                       ${password}
    Click Element                        //*[@id="login"]
  
User testing login with valid username and wrong password (Negative Password Test)
    Maximize Browser Window
    Click Element                        //*[@id="submit"]
    Input Text                           //*[@id="username"]                        ${usename}
    Input Text                           //*[@id="password"]                       Password1234
    Click Element                        //*[@id="login"]
   

    