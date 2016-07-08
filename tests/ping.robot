*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Ping should exist
    Create Session    checkers    http://localhost:8080
    ${resp}=    Get Request    checkers    /ping
    Should be equal as strings    ${resp.status_code}    200
    Should be equal as strings    ${resp.text}    pong
