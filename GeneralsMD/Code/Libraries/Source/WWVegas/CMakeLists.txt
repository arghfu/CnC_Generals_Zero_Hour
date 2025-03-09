# Interface libraries to set common defines and includes, avoid duplication later
add_library(wwcommon INTERFACE)

target_compile_definitions(wwcommon INTERFACE
        __PLACEMENT_VEC_NEW_INLINE
        $<$<CONFIG:Debug>:WWDEBUG>
        $<$<CONFIG:Debug>:_DEBUG>
        _DEBUG
        WINVER=0x400
        _WINDOWS
        WIN32
        WIN32_LEAN_AND_MEAN
        REGEX_MALLOC
        STDC_HEADERS
)

target_compile_options(wwcommon INTERFACE
        ${THYME_FLAGS}
)

target_link_libraries(wwcommon INTERFACE
        #    stlport
        milesstub
        d3d8lib
)

target_include_directories(wwcommon INTERFACE
        WWDebug
        WWLib
        WWMath
        Wwutil
        WWSaveLoad
        WW3D2
        wwshade
        WWAudio
        .
)

add_subdirectory(WWDebug)
add_subdirectory(WWLib)
add_subdirectory(WWMath)
add_subdirectory(Wwutil)
add_subdirectory(WWSaveLoad)
add_subdirectory(WW3D2)
add_subdirectory(WWDownload)
add_subdirectory(wwshade)

# Helpful interface to bundle the ww modules together.
add_library(wwvegas INTERFACE)

target_include_directories(wwvegas INTERFACE
        WWDebug
        WWLib
        WWMath
        WW3D2
        WWDownload
        WWSaveLoad
        wwshade
        Wwutil
        . # public interface
)

target_link_libraries(wwvegas INTERFACE
        wwdebug
        wwlib
        wwmath
        wwutil
        wwsaveload
        ww3d2
        wwdownload
        wwshade
)