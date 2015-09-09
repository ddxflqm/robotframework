*** Settings ***
Suite Setup       Run Tests    ${EMPTY}    variables/suite_source
Force Tags        regression
Resource          atest_resource.robot

*** Test Cases ***
${SUITE SOURCE} in dir suite
    Check Test Suite    Suite Source    3 critical tests, 3 passed, 0 failed\n3 tests total, 3 passed, 0 failed

${SUITE SOURCE} in file suite
    Check Test Case    ${TEST NAME}

${SUITE SOURCE} in user keyword
    Check Test Case    ${TEST NAME}

${SUITE SOURCE} in resource file
    Check Test Case    ${TEST NAME}