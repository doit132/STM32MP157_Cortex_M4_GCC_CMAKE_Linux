TARGET_SOURCES(
    ${PROJECT_NAME}
    PRIVATE # {{BEGIN_TARGET_SOURCES}}
    ${CMAKE_CURRENT_LIST_DIR}/src/main.c
    ${CMAKE_CURRENT_LIST_DIR}/src/stm32mp1xx_it.c
    ${CMAKE_CURRENT_LIST_DIR}/src/system_stm32mp1xx.c
    ${CMAKE_CURRENT_LIST_DIR}/src/stm32mp1xx_hal_msp.c
    ${CMAKE_CURRENT_LIST_DIR}/src/lock_resource.c
    # {{END_TARGET_SOURCES}}
)

# Add the Common/inc directory to the project include list
TARGET_INCLUDE_DIRECTORIES(
    ${PROJECT_NAME}
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
    ${CMAKE_CURRENT_LIST_DIR}/inc
)
