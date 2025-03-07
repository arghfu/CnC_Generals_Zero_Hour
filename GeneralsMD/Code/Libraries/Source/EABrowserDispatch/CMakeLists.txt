add_library(BrowserDispatch INTERFACE)

target_include_directories(BrowserDispatch INTERFACE ${CMAKE_CURRENT_BINARY_DIR}/..)


if ("${CMAKE_SYSTEM}" MATCHES "Windows")
    add_custom_target(BrowserDispatchBuild
            COMMAND midl.exe "${CMAKE_CURRENT_SOURCE_DIR}/BrowserDispatch.idl" /header BrowserDispatch.h
            WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
            BYPRODUCTS BrowserDispatch.h BrowserDispatch_i.c
            DEPENDS BrowserDispatch.idl
    )
endif ()


add_dependencies(BrowserDispatch BrowserDispatchBuild)

target_sources(BrowserDispatch INTERFACE
        ${CMAKE_CURRENT_BINARY_DIR}/BrowserDispatch_i.c
)
