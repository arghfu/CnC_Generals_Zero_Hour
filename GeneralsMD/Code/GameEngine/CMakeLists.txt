add_subdirectory(Source)

add_library(GameEngine STATIC)

target_link_libraries(GameEngine PRIVATE GameEngine.pch)


