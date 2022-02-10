vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Project-OSRM/osrm-backend
    REF v5.26.0
    SHA512 77c697bd9e9458db38ae8636766b8631a2a103c1c46ed7818b51e3edb5708ff6e7ab71430157532d4cd1ddd34f61904b920880fc8d3b240f671637df5fd61c08
    HEAD_REF master
    PATCHES remove-zlib-boost-component.patch
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        ${OPTIONS}
        ${FEATURE_OPTIONS}
        -DBUILD_SHARED_LIBS=OFF
)

vcpkg_cmake_install()

