# RandomCMake
A bunch of useful/random cmake files

# Contents

## SDL2.cmake

### Description

This file fetches SDL2 and adds it's subdirectory.

### Dependencies on other files in this repo

None

### Use

```cmake
# Before declaring the target
include(path/to/sdl2.cmake)

getSDL2(<version>)

# Declare your target

target_link_libraries(<target> PRIVATE SDL2)
target_include_directories(<target> PRIVATE ${sdl2_SOURCE_DIR}/include)
```

## nall.cmake

### Description

This file fetches the nall STL and adds it's subdirectory.

### Dependencies

None but make sure that `CMAKE_CXX_STANDARD` is set to `17` or above

### Use

```cmake
# Before declaring the target
include(path/to/nall.cmake)

getNall()

# Declare your target

target_link_libraries(<target> PRIVATE nall)
```

## hiro.cmake

### Description

This file fetches the hiro GUI library and adds it's subdirectory.

### Dependencies

Nall

### Use

```cmake
# Before declaring the target
include(path/to/nall.cmake)
getNall()

include(path/to/hiro.cmake)
getHiro()

# Declare your target

target_link_libraries(<target> PRIVATE nall hiro)
```
