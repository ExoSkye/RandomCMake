include(FetchContent)

function(getNall)
    FetchContent_Declare(fetchnall
            GIT_REPOSITORY  https://github.com/ProtoByter/nall
            GIT_SHALLOW     TRUE
            SOURCE_DIR      ${CMAKE_BINARY_DIR}/nall-src
            )

    FetchContent_GetProperties(fetchnall)
    if(NOT fetchnall_POPULATED)
        message(STATUS "Fetching fetchnall")
        FetchContent_Populate(fetchnall)
        message(STATUS "Fetched fetchnall")
    endif()

    add_subdirectory(${fetchnall_SOURCE_DIR})
endfunction()
