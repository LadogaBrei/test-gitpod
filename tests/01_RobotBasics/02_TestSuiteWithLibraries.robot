*** Settings ***
Library    String
Library    SeleniumLibrary

*** Test Cases ***
My String Test
    Log    Checking Strings
    
    Should Be Title Case    Hello World Console
    Should Be Lower Case    hello world console
    Should Be Upper Case    HELLO WORLD CONSOLE
