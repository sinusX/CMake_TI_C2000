cmake_minimum_required(VERSION 3.10)

project (Demo C ASM)
set( CMAKE_VERBOSE_MAKEFILE on )

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -v28 -ml -mt --cla_support=cla0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --float_support=fpu32")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --vcu_support=vcu0 --define=_DEBUG")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --define=_FLASH --define=LARGE_MODEL -g -diag_suppress=552") 
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --diag_warning=225 --issue_remarks --verbose_diagnostics --quiet")

SET(CMAKE_ASM_FLAGS "${CMAKE_C_FLAGS}")

set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -z -m'Example_2806xLaunchPad.map' --heap_size=0x400")
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} --stack_size=0x200 --warn_sections --priority --reread_libs")
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} --rom_model -o 'Example_2806xLaunchPad.out' ")
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -i\"/home/simon/ti/ccs1110/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/lib\" -i\"/home/simon/ti/C2000Ware_4_00_00_00/libraries/math/IQmath/c28/lib\" -i\"/home/simon/ti/C2000Ware_4_00_00_00/libraries/math/FPUfastRTS/c28/lib\"")

set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} '/home/simon/ti/C2000Ware_4_00_00_00/device_support/f2806x/common/cmd/F28069.cmd' '/home/simon/ti/C2000Ware_4_00_00_00/device_support/f2806x/headers/cmd/F2806x_Headers_nonBIOS.cmd'")

add_executable(Demo 
    src/Example_F2806xLaunchPadDemo.c
    src/sci_io.c
    commonSrc/F2806x_Adc.c
    commonSrc/F2806x_CodeStartBranch.asm
    commonSrc/F2806x_CpuTimers.c
    commonSrc/F2806x_DefaultIsr.c
    commonSrc/F2806x_GlobalVariableDefs.c
    commonSrc/F2806x_PieCtrl.c
    commonSrc/F2806x_PieVect.c
    commonSrc/F2806x_Sci.c
    commonSrc/F2806x_SysCtrl.c
    commonSrc/F2806x_TempSensorConv.c
    commonSrc/F2806x_usDelay.asm
) 

target_include_directories(Demo PUBLIC 
    /home/simon/ti/ccs1110/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/include
    /home/simon/ti/C2000Ware_4_00_00_00/device_support/f2806x/headers/include
    /home/simon/ti/C2000Ware_4_00_00_00/device_support/f2806x/common/include
    /home/simon/ti/C2000Ware_4_00_00_00/libraries/math/FPUfastRTS/c28/include
    )
