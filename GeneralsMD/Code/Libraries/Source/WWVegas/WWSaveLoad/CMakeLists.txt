# Set source files
set(WWSAVELOAD_SRC
    definition.cpp
    definitionfactory.cpp
    definitionfactorymgr.cpp
    definitionmgr.cpp
    parameter.cpp
    persistfactory.cpp
    pointerremap.cpp
    saveload.cpp
    saveloadstatus.cpp
    saveloadsubsystem.cpp
    twiddler.cpp
    wwsaveload.cpp
)

# Targets to build.
add_library(wwsaveload STATIC)

target_link_libraries(wwsaveload PRIVATE
    wwcommon
)

target_sources(wwsaveload PRIVATE ${WWSAVELOAD_SRC})
