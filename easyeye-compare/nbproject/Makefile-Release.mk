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
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/easyeye_compare_main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f3 \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=`cppunit-config --cflags` 

# CC Compiler Flags
CCFLAGS=`cppunit-config --cflags` 
CXXFLAGS=`cppunit-config --cflags` 

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../easyeye/dist/Release/GNU-Linux-x86/libeasyeye.a ../optimasek/dist/Release/GNU-Linux-x86/liboptimasek.a -ljsoncpp

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/easyeye-compare

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/easyeye-compare: ../easyeye/dist/Release/GNU-Linux-x86/libeasyeye.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/easyeye-compare: ../optimasek/dist/Release/GNU-Linux-x86/liboptimasek.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/easyeye-compare: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/easyeye-compare ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/easyeye_compare_main.o: src/easyeye_compare_main.cc 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../easyeye/src -I../optimasek/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/easyeye_compare_main.o src/easyeye_compare_main.cc

# Subprojects
.build-subprojects:
	cd ../easyeye && ${MAKE}  -f Makefile CONF=Release
	cd ../optimasek && ${MAKE}  -f Makefile CONF=Release
	cd ../optimasek && ${MAKE}  -f Makefile CONF=Release
	cd ../easyeye && ${MAKE}  -f Makefile CONF=Release

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f3: ${TESTDIR}/tests/easyeye_compare_main_test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f3 $^ ${LDLIBSOPTIONS} `cppunit-config --libs`   

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/options_test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} `cppunit-config --libs`   


${TESTDIR}/tests/easyeye_compare_main_test.o: tests/easyeye_compare_main_test.cc 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../easyeye/src -I../optimasek/include -Isrc -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/easyeye_compare_main_test.o tests/easyeye_compare_main_test.cc


${TESTDIR}/tests/options_test.o: tests/options_test.cc 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../easyeye/src -I../optimasek/include -Isrc -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/options_test.o tests/options_test.cc


${OBJECTDIR}/src/easyeye_compare_main_nomain.o: ${OBJECTDIR}/src/easyeye_compare_main.o src/easyeye_compare_main.cc 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/easyeye_compare_main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -I../easyeye/src -I../optimasek/include -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/easyeye_compare_main_nomain.o src/easyeye_compare_main.cc;\
	else  \
	    ${CP} ${OBJECTDIR}/src/easyeye_compare_main.o ${OBJECTDIR}/src/easyeye_compare_main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f3 || true; \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/easyeye-compare

# Subprojects
.clean-subprojects:
	cd ../easyeye && ${MAKE}  -f Makefile CONF=Release clean
	cd ../optimasek && ${MAKE}  -f Makefile CONF=Release clean
	cd ../optimasek && ${MAKE}  -f Makefile CONF=Release clean
	cd ../easyeye && ${MAKE}  -f Makefile CONF=Release clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
