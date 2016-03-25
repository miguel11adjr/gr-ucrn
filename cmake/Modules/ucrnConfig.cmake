INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_UCRN ucrn)

FIND_PATH(
    UCRN_INCLUDE_DIRS
    NAMES ucrn/api.h
    HINTS $ENV{UCRN_DIR}/include
        ${PC_UCRN_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    UCRN_LIBRARIES
    NAMES gnuradio-ucrn
    HINTS $ENV{UCRN_DIR}/lib
        ${PC_UCRN_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(UCRN DEFAULT_MSG UCRN_LIBRARIES UCRN_INCLUDE_DIRS)
MARK_AS_ADVANCED(UCRN_LIBRARIES UCRN_INCLUDE_DIRS)

