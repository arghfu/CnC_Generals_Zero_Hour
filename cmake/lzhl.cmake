set(LZHL_DIR ${CMAKE_CURRENT_BINARY_DIR}/_deps/lzhl-src/CompLibHeader)

FetchContent_Populate(lzhl DOWNLOAD_EXTRACT_TIMESTAMP
    GIT_REPOSITORY https://github.com/xezon/lzhl
    GIT_TAG        dfd96e2ca64adaddb35dd4ebadd6add7d5586783
    SOURCE_DIR     ${LZHL_DIR}
)

add_library(liblzhl STATIC)

target_sources(liblzhl PRIVATE
    "${LZHL_DIR}/Huff.cpp"
    "${LZHL_DIR}/Lz.cpp"
    "${LZHL_DIR}/Lzhl_tcp.cpp"
    "${LZHL_DIR}/Lzhl.cpp"
    "${LZHL_DIR}/Test.c"
)

target_include_directories(liblzhl PUBLIC ${LZHL_DIR} ${LZHL_DIR}/..)
