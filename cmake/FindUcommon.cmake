FIND_PATH(UCOMMON_INCLUDE_DIR ucommon/ucommon.h)
FIND_LIBRARY(UCOMMON_LIBRARIES NAMES ucommon)
FIND_LIBRARY(USECURE_LIBRARIES NAMES usecure)

IF(UCOMMON_INCLUDE_DIR AND UCOMMON_LIBRARIES AND USECURE_LIBRARIES)
	SET(UCOMMON_FOUND TRUE)
	SET(UCOMMON_LIBRARIES ${UCOMMON_LIBRARIES} ${USECURE_LIBRARIES})
ENDIF(UCOMMON_INCLUDE_DIR AND UCOMMON_LIBRARIES AND USECURE_LIBRARIES)

IF(UCOMMON_FOUND)
	IF (NOT Ucommon_FIND_QUIETLY)
		MESSAGE(STATUS "Found ucommon includes:	${UCOMMON_INCLUDE_DIR}/ucommon/ucommon.h")
		MESSAGE(STATUS "Found ucommon library:	${UCOMMON_LIBRARIES}")
	ENDIF (NOT Ucommon_FIND_QUIETLY)
ELSE(UCOMMON_FOUND)
	IF (Ucommon_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could NOT find ucommon development files")
	ENDIF (Ucommon_FIND_REQUIRED)
ENDIF(UCOMMON_FOUND)
