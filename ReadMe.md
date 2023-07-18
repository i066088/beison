# Work with CMake Project


- Create the build folder
```cmake
mkdir build
cd build
```
- Generate the project:
```cmake
# to build dynamic library
cmake -DBUILD_SHARED_LIBS=ON ..
# to build static library
cmake ..
```
The output is like:
```
-- Building for: Visual Studio 17 2022
-- The CXX compiler identification is MSVC 19.36.32535.0
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: E:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/bin/Hostx64/x64/cl.exe - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done (6.1s)
-- Generating done (0.1s)
-- Build files have been written to: E:/GitHub/beison/build
```

By default, VS is used to generate the build files. However, you can also select a different generator and specify a build type, like below:
```
cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Debug ..
```

- Build the project:
```cmake
cmake --build . --config=Release
cmake --build . --config=Debug
```

- Install the project:
```cmake
cmake --install .
```

- What is installed
```
-- Install configuration: "Release"
-- Installing: C:/Program Files (x86)/beison/share/beison/beison-config.cmake
-- Installing: C:/Program Files (x86)/beison/share/beison/beison-config-version.cmake
-- Installing: C:/Program Files (x86)/beison/lib/beison.lib
-- Installing: C:/Program Files (x86)/beison/bin/beison.dll
-- Installing: C:/Program Files (x86)/beison/include
-- Installing: C:/Program Files (x86)/beison/include/beison.h
-- Installing: C:/Program Files (x86)/beison/share/beison/beison-targets.cmake
-- Installing: C:/Program Files (x86)/beison/share/beison/beison-targets-release.cmake
```

- Dependency

Open the beison VS project,  you will find `beicode` is referenced.
```
C:\Program Files (x86)\beicode\lib\beicode.lib
```
Open `beison-targets-release.cmake`,  you will find `beicode` is referenced.
```
set_target_properties(beison::beison PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/beison.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "beicode::beicode"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/beison.dll"
  )
```