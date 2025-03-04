# Targets to build.
add_library(wwutil STATIC)

target_link_libraries(wwutil PRIVATE
        wwcommon
)

target_sources(wwutil PRIVATE
        mathutil.cpp
        mathutil.h
        miscutil.cpp
        miscutil.h
)

target_compile_definitions(wwutil PRIVATE
        __PLACEMENT_VEC_NEW_INLINE
)