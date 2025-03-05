# Targets to build.
add_library(wwutil STATIC)

target_link_libraries(wwutil PRIVATE
        wwcommon
)

target_sources(wwutil PRIVATE
        mathutil.cpp
        miscutil.cpp
)
