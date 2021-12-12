include(FetchContent)

function(getHiro)
    FetchContent_Declare(hiro
            GIT_REPOSITORY  https://github.com/ProtoByter/hiro
            GIT_TAG         main
            GIT_SHALLOW     TRUE
            SOURCE_DIR      ${CMAKE_BINARY_DIR}/hiro-src
            )

    FetchContent_GetProperties(hiro)
    if(NOT hiro_POPULATED)
        message(STATUS "Fetching hiro")
        FetchContent_Populate(hiro)
        message(STATUS "Fetched hiro")
    endif()

    add_subdirectory(${hiro_SOURCE_DIR})
endfunction()
