add_executable(zerohour WIN32)

target_link_directories(zerohour PRIVATE
        ../GameEngine
)

set_target_properties(zerohour PROPERTIES
        OUTPUT_NAME Generals
        DEBUG_POSTFIX d
)

target_link_libraries(zerohour PRIVATE
        GameEngine
        GameEngineDevice
        winmm
        imm32
        dbghelp
        vfw32
        d3d8
        d3dx8
        dinput8
        dxguid
        binkstub
        milesstub
        profile
        safedisc
)

# TODO Originally referred to build host and user, replace with git info perhaps?
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/GeneratedVersion.h
"#pragma once

#define VERSION_LOCALBUILDNUM 0
#define VERSION_BUILDUSER \"Someone\"
#define VERSION_BUILDLOC \"Someplace\"
"
)

# Based on original binary values for these variables.
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/BuildVersion.h
"#pragma once

#define VERSION_MAJOR 1
#define VERSION_MINOR 4
#define VERSION_BUILDNUM 601
"
)

target_compile_definitions(zerohour PRIVATE __PLACEMENT_VEC_NEW_INLINE)

target_link_options(zerohour PRIVATE "/NODEFAULTLIB:libci.lib,libcd.lib")

target_include_directories(zerohour PRIVATE
        ../Libraries/Include
        ../Libraries/Source
        .
        ${CMAKE_CURRENT_BINARY_DIR}
)

target_sources(zerohour PRIVATE
        WinMain.cpp
        WinMain.h
)

install(TARGETS zerohour binkstub milesstub
        DESTINATION Run
        CONFIGURATIONS Debug)

if ("${CMAKE_SYSTEM}" MATCHES "Windows")
    target_sources(zerohour PRIVATE
            RTS.RC
    )
endif ()
