# ------------------------------------
# 0、硬件平台信息与编译器信息；
# ------------------------------------

SET(PATH_WORKSPACE_ROOT ${CMAKE_SOURCE_DIR})

# TODO:  这个是最有可能需要修改的地方
INCLUDE("${PATH_WORKSPACE_ROOT}/Toolchains/cmake/cortex_m4.cmake")

# ------------------------------------
# 1、工程信息
# ------------------------------------
# 设置CMAKE最低版本
CMAKE_MINIMUM_REQUIRED(VERSION 3.16)

# 设置当前的工程名称
PROJECT(STM32MP157 VERSION 0.0.1 LANGUAGES C CXX ASM)

MESSAGE(STATUS ${MESSAGE_SEPARATOR} ${MESSAGE_SEPARATOR})
MESSAGE(STATUS "**** Building project: ${CMAKE_PROJECT_NAME}, Version: ${CMAKE_PROJECT_VERSION} ****")

# TODO:  这个是最有可能需要修改的地方
# 指定链接文件;
SET(LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/linker/stm32mp15xx_m4.ld)

# 指定启动文件;
SET(STARTUP_ASM ${PATH_WORKSPACE_ROOT}/Drivers/CMSIS/Device/ST/STM32MP1xx/Source/Templates/gcc/startup_stm32mp15xx.s)

# 项目底层公共头文件;
INCLUDE_DIRECTORIES(${PATH_WORKSPACE_ROOT}/include)

# ----------------------------------
# 2, 编译控制;
# ----------------------------------

# 是否开启更详细的编译过程信息显示
SET(CMAKE_VERBOSE_MAKEFILE OFF)

# -----------------------------------
# 3, 预定义宏;
# -----------------------------------

# 平台相关宏定义
ADD_DEFINITIONS(
    -DCORE_CM4
    -DUSE_HAL_DRIVER
    -DSTM32MP157Dxx
)

# --------------------------------------
# 4、差异化构建配置；
# --------------------------------------
OPTION(OPEN_LOG_OMN_DEBUG "Open log output for debug" OFF)

# 修改该变量的值，可以修改输出文件的名称；
SET(OUTPUT_EXE_NAME "STM32MP157")

# 优化级别的差异配置
# -----------------------------------
IF("${CMAKE_BUILD_TYPE}" STREQUAL "Release")
    ADD_DEFINITIONS()
ELSEIF("${CMAKE_BUILD_TYPE}" STREQUAL "RelWithDebInfo")
    ADD_DEFINITIONS()
ELSEIF("${CMAKE_BUILD_TYPE}" STREQUAL "MinSizeRel")
    ADD_DEFINITIONS()
ELSE()
    IF(OPEN_LOG_OMN_DEBUG)
        ADD_DEFINITIONS(-DLOG_BACKEND=LOG_BACKEND_NONE)
    ELSE()
        ADD_DEFINITIONS(-DLOG_BACKEND=LOG_BACKEND_NONE)
    ENDIF()
ENDIF()

MESSAGE(STATUS "**** Build for ${CMAKE_BUILD_TYPE} ****")
MESSAGE(STATUS ${MESSAGE_SEPARATOR} ${MESSAGE_SEPARATOR} "\n")

# -------------------------------------
# 5、设置文件输出路径；
# -------------------------------------

# 设置库输出路径
SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib_obj)

SET(ELF_FILE ${PROJECT_BINARY_DIR}/${OUTPUT_EXE_NAME}.elf)
SET(HEX_FILE ${PROJECT_BINARY_DIR}/${OUTPUT_EXE_NAME}.hex)
SET(BIN_FILE ${PROJECT_BINARY_DIR}/${OUTPUT_EXE_NAME}.bin)

# ---------------------------------
# 6、组织公共库源文件；
# ---------------------------------

# ---------------------------------
# 7、组织用户源文件；
# ---------------------------------

# 用户源码；
# ---------------------------------
INCLUDE_DIRECTORIES(
    # 应用层头文件包含路径;
    # ${CMAKE_SOURCE_DIR}/inc

    # 硬件驱动头文件路径;
)

# TODO:  这个是最有可能需要修改的地方
SET(USER_SOURCE
    # ${CMAKE_SOURCE_DIR}/src/stm32f4xx_it.c
    # ${CMAKE_SOURCE_DIR}/src/system_stm32f4xx.c
    # ${CMAKE_SOURCE_DIR}/src/main.c
)

# ------------------------------------------------
# 8、编译、连接，生成可执行文件
# ------------------------------------------------

# 定义连接器参数； --gc-sections：指示链接器去掉不用的 section
SET(CMAKE_EXE_LINKER_FLAGS
    "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT} -Wl,-Map=${PROJECT_BINARY_DIR}/${OUTPUT_EXE_NAME}.map -Wl,--gc-sections,--print-memory-usage"
)

# 生成可执行文件
ADD_EXECUTABLE(${PROJECT_NAME} ${COMMON_SERVICES_SOURCE} ${USER_SOURCE} ${LINKER_SCRIPT} ${STARTUP_ASM})

# TODO:  这个是最有可能需要修改的地方
# 添加依赖;
ADD_SUBDIRECTORY(${PATH_WORKSPACE_ROOT}/Drivers/ ${LIBRARY_OUTPUT_PATH}/Drivers)
ADD_SUBDIRECTORY(${CMAKE_SOURCE_DIR}/User ${LIBRARY_OUTPUT_PATH}/User)

# -----------------------------------------
# 9、生成 hex 和 bin 文件
# -----------------------------------------
ADD_CUSTOM_COMMAND(
    TARGET "${PROJECT_NAME}"
    POST_BUILD

    # Build .hex and .bin files
    COMMAND ${OBJCOPY} -Obinary "${PROJECT_NAME}" "${OUTPUT_EXE_NAME}.bin"
    COMMAND ${OBJCOPY} -Oihex "${PROJECT_NAME}" "${OUTPUT_EXE_NAME}.hex"
    COMMENT "Building ${OUTPUT_EXE_NAME}.bin and ${OUTPUT_EXE_NAME}.hex"

    # Display sizes
    COMMAND ${SIZE} --format=berkeley ${PROJECT_NAME}
    COMMENT "Invoking: Cross ARM GNU Print Size")
