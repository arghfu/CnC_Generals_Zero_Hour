set(LZHL_DIR ${CMAKE_SOURCE_DIR}/Dependencies/.lzhl)

FetchContent_Populate(lzhl DOWNLOAD_EXTRACT_TIMESTAMP
    GIT_REPOSITORY https://github.com/xezon/lzhl
    GIT_TAG        main
    SOURCE_DIR     ${LZHL_DIR})

file(GLOB LZHL_HEADERS "${LZHL_DIR}/*.h")
file(GLOB LZHL_SOURCES "${LZHL_DIR}/*.cpp")

add_library(liblzhl STATIC ${LZHL_SOURCES})
target_sources(liblzhl PRIVATE ${LZHL_HEADERS})
target_include_directories(liblzhl PUBLIC ${LZHL_DIR})
