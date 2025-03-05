set(WWSHADE_SRC
    shddef.cpp
    shddeffactory.cpp
    shddefmanager.cpp
    shdforcelinks.cpp
    shdhwshader.cpp
    shdinterface.cpp
    shdlib.cpp
    shdloader.cpp
    shdmesh.cpp
    shdrenderer.cpp
    shdsubmesh.cpp
    shdsimple.cpp
    shd6bumpspec.cpp
    shd7bumpspec.cpp
    shd8bumpspec.cpp
    shdbumpspec.cpp
    shd6bumpdiff.cpp
    shd7bumpdiff.cpp
    shd8bumpdiff.cpp
    shdbumpdiff.cpp
    shdglossmask.cpp
    shdcubemap.cpp
    shdlegacyw3d.cpp
)

if(WIN32 OR "${CMAKE_SYSTEM}" MATCHES "Windows")
    file(GLOB_RECURSE SHADER_FILES "*.vsh")
    list(APPEND SHADER_LIST ${SHADER_FILES})
    file(GLOB_RECURSE SHADER_FILES "*.psh")
    list(APPEND SHADER_LIST ${SHADER_FILES})
    foreach(shdfile ${SHADER_LIST})
        get_filename_component(shdfilename ${shdfile} NAME)
        add_custom_command(
            OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/${shdfilename}_code.h
            COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/shdpp.exe ${shdfilename}
            WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        )
        list(APPEND WWSHADE_SRC ${CMAKE_CURRENT_SOURCE_DIR}/${shdfilename}_code.h)
    endforeach()
endif()

add_library(wwshade STATIC)

target_link_libraries(wwshade PRIVATE
    wwcommon
)

target_sources(wwshade PRIVATE ${WWSHADE_SRC})

target_compile_definitions(wwshade PRIVATE __PLACEMENT_VEC_NEW_INLINE)