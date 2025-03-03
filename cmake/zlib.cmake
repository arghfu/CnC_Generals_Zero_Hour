set(ZLIB_PARENT_DIR ${CMAKE_SOURCE_DIR}/Dependencies/.zlib-1.1.4)
set(ZLIB_DIR ${ZLIB_PARENT_DIR}/ZLib)

FetchContent_Populate(zlib DOWNLOAD_EXTRACT_TIMESTAMP
    GIT_REPOSITORY https://github.com/xezon/zlib-1.1.4
    GIT_TAG        main
    SOURCE_DIR     ${ZLIB_DIR})

file(GLOB ZLIB_HEADERS "${ZLIB_DIR}/*.h")
file(GLOB ZLIB_SOURCES "${ZLIB_DIR}/*.c")
list(REMOVE_ITEM ZLIB_SOURCES "${ZLIB_DIR}/minigzip.c") # Is tool
list(REMOVE_ITEM ZLIB_SOURCES "${ZLIB_DIR}/maketree.c") # Is tool

add_library(libzlib STATIC ${ZLIB_SOURCES})
target_sources(libzlib PRIVATE ${ZLIB_HEADERS})
target_include_directories(libzlib PUBLIC ${ZLIB_PARENT_DIR})
