include(FetchContent)

function(getNall)
    FetchContent_Declare(nall
            GIT_REPOSITORY  https://github.com/ProtoByter/nall
            GIT_SHALLOW     TRUE
            SOURCE_DIR      ${CMAKE_BINARY_DIR}/nall-src
            )

    FetchContent_GetProperties(nall)
    if(NOT nall_POPULATED)
        message(STATUS "Fetching nall")
        FetchContent_Populate(nall)
        message(STATUS "Fetched nall")
    endif()

    add_subdirectory(${nall_SOURCE_DIR})
endfunction()
