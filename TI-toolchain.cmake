set(TI_TOOLCHAIN_DIR "/home/simon/ti/ccs1110/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS")

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)

# toolchain paths
find_program(TI_GCC             NAMES   cl2000    PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_CXX             NAMES   cl2000    PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_AS              NAMES   cl2000    PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_AR              NAMES   ar2000    PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_OBJCOPY         NAMES   ofd2000   PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_OBJDUMP         NAMES   hex2000   PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_SIZE            NAMES   size2000  PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)
find_program(TI_LD              NAMES   cl2000    PATHS  ${TI_TOOLCHAIN_DIR}/bin    NO_DEFAULT_PATH)

# set executables settings
set(CMAKE_C_COMPILER    ${TI_GCC})
set(CMAKE_CXX_COMPILER  ${TI_CXX})
set(AS                  ${TI_AS})
set(AR                  ${TI_AR})
set(OBJCOPY             ${TI_OBJCOPY})
set(OBJDUMP             ${TI_OBJDUMP})
set(SIZE                ${TI_SIZE})
set(LD                  ${TI_LD})

