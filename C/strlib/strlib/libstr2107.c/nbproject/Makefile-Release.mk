#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=Cygwin_4.x-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include find_length

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/address_of.o \
	${OBJECTDIR}/begins_with_ignore_case.o \
	${OBJECTDIR}/belongs.o \
	${OBJECTDIR}/center.o \
	${OBJECTDIR}/distinct.o \
	${OBJECTDIR}/drop_left.o \
	${OBJECTDIR}/drop_right.o \
	${OBJECTDIR}/ellipsize.o \
	${OBJECTDIR}/ends_with_ignore_case.o \
	${OBJECTDIR}/findlength.o \
	${OBJECTDIR}/index_of.o \
	${OBJECTDIR}/intersect.o \
	${OBJECTDIR}/is_blank.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/make_space.o \
	${OBJECTDIR}/remove_chars.o \
	${OBJECTDIR}/repeat.o \
	${OBJECTDIR}/strcmp_ign_case.o \
	${OBJECTDIR}/strcopy.o \
	${OBJECTDIR}/wordcount.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libstr2107.c.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libstr2107.c.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libstr2107.c ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/address_of.o: address_of.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/address_of.o address_of.c

${OBJECTDIR}/begins_with_ignore_case.o: begins_with_ignore_case.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/begins_with_ignore_case.o begins_with_ignore_case.c

${OBJECTDIR}/belongs.o: belongs.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/belongs.o belongs.c

${OBJECTDIR}/center.o: center.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/center.o center.c

${OBJECTDIR}/distinct.o: distinct.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/distinct.o distinct.c

${OBJECTDIR}/drop_left.o: drop_left.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/drop_left.o drop_left.c

${OBJECTDIR}/drop_right.o: drop_right.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/drop_right.o drop_right.c

${OBJECTDIR}/ellipsize.o: ellipsize.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ellipsize.o ellipsize.c

${OBJECTDIR}/ends_with_ignore_case.o: ends_with_ignore_case.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ends_with_ignore_case.o ends_with_ignore_case.c

${OBJECTDIR}/findlength.o: findlength.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/findlength.o findlength.c

${OBJECTDIR}/index_of.o: index_of.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/index_of.o index_of.c

${OBJECTDIR}/intersect.o: intersect.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/intersect.o intersect.c

${OBJECTDIR}/is_blank.o: is_blank.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/is_blank.o is_blank.c

${OBJECTDIR}/main.o: main.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.c

${OBJECTDIR}/make_space.o: make_space.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/make_space.o make_space.c

${OBJECTDIR}/remove_chars.o: remove_chars.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/remove_chars.o remove_chars.c

${OBJECTDIR}/repeat.o: repeat.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/repeat.o repeat.c

${OBJECTDIR}/strcmp_ign_case.o: strcmp_ign_case.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/strcmp_ign_case.o strcmp_ign_case.c

${OBJECTDIR}/strcopy.o: strcopy.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/strcopy.o strcopy.c

${OBJECTDIR}/wordcount.o: wordcount.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/wordcount.o wordcount.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libstr2107.c.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
