add_library(GameEngine.pch INTERFACE)

target_sources(GameEngine.pch INTERFACE PreRTS.cpp)

target_include_directories(GameEngine.pch INTERFACE
        ../../Include
        ../../Include/Precompiled
        ${PROJECT_SOURCE_DIR}/Code/Libraries/Include/
)

target_compile_definitions(GameEngine.pch INTERFACE _OPERATOR_NEW_DEFINED_)