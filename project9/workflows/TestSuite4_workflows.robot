*** Settings ***
Library    SeleniumLibrary

Force Tags    flights

*** Variables ***
${url}    https://www.cleartrip.com/ 
${browser}    chrome
${xpath_roundtrip}    //input[@id='RoundTrip']

*** Keywords ***
launch browser and invoke app
    [Arguments]    ${url_temp}    ${browser_temp}
    Open Browser    ${url_temp}    ${browser_temp}
    Maximize Browser Window   
    sleep    5
    
kill browser
    Close Browser

   
*** Test Cases ***
sample testcase 01
    [tags]    smoke
    launch browser and invoke app    ${url}    ${browser}
    kill browser
sample testcase 02
    [tags]    reg
    launch browser and invoke app    ${url}    ${browser}
    kill browser
sample testcase 03
    [tags]    nightly    smoke
    launch browser and invoke app    ${url}    ${browser}
    kill browser
sample testcase 04
    [tags]    reg    weekly
    launch browser and invoke app    ${url}    ${browser}
    kill browser
   
   