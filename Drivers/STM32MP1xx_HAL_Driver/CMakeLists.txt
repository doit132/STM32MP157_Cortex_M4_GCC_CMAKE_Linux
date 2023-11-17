TARGET_SOURCES(
    ${PROJECT_NAME}
    PRIVATE # {{BEGIN_TARGET_SOURCES}}
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_cryp_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_adc.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_adc_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_cec.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_cortex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_crc.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_crc_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_cryp.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dac.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dac_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dcmi.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dfsdm.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dfsdm_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dma.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_dma_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_exti.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_fdcan.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_gpio.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_hash.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_hash_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_hsem.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_i2c.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_i2c_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_ipcc.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_lptim.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_mdios.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_mdma.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_msp_template.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_pwr.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_pwr_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_qspi.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_rcc.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_rcc_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_rng.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_rtc.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_rtc_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_sai.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_sai_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_sd.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_sd_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_smartcard.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_smartcard_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_smbus.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_smbus_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_spdifrx.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_spi.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_spi_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_sram.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_tim.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_tim_ex.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_timebase_tim_template.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_uart.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_uart_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_usart.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_usart_ex.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_hal_wwdg.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_adc.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_delayblock.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_dma.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_exti.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_fmc.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_gpio.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_i2c.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_lptim.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_pwr.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_rcc.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_rtc.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_sdmmc.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_spi.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_tim.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_usart.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/stm32mp1xx_ll_utils.c
    # {{END_TARGET_SOURCES}}
)

# Add the Common/inc directory to the project include list
TARGET_INCLUDE_DIRECTORIES(
    ${PROJECT_NAME}
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
    ${CMAKE_CURRENT_LIST_DIR}/Inc
)
