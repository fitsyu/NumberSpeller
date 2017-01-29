#############################################################################
# Makefile for building: NumberSpeller
# Generated by qmake (3.0) (Qt 5.5.0)
# Project:  NumberSpeller.pro
# Template: app
# Command: /opt/Qt5.5.0/5.5/gcc_64/bin/qmake -spec linux-g++ CONFIG+=debug -o Makefile NumberSpeller.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = 
CFLAGS        = -pipe -g -Wall -W -fPIC $(DEFINES)
CXXFLAGS      = -pipe -std=c++11 -g -std=c++0x -Wall -W -fPIC $(DEFINES)
INCPATH       = -I. -I/opt/Qt5.5.0/5.5/gcc_64/mkspecs/linux-g++
QMAKE         = /opt/Qt5.5.0/5.5/gcc_64/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = NumberSpeller1.0.0
DISTDIR = /media/Home2/Proyek/NumberSpeller/.tmp/NumberSpeller1.0.0
LINK          = g++
LFLAGS        = -Wl,-rpath,/opt/Qt5.5.0/5.5/gcc_64
LIBS          = $(SUBLIBS)  
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp 
OBJECTS       = main.o
DIST          = sample \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/spec_pre.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/unix.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/linux.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/sanitize.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/gcc-base.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/gcc-base-unix.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/g++-base.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/g++-unix.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/qconfig.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dcore.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dcore_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dinput.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dinput_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquick.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquick_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquickrenderer.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquickrenderer_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3drenderer.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3drenderer_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_core.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_declarative.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_enginio.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_help.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_location.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_location_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_network.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_script.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webchannel.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webengine.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkit.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_websockets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webview_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/qt_functions.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/qt_config.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/linux-g++/qmake.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/spec_post.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/exclusive_builds.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/default_pre.prf \
		deployment.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/resolve_config.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/default_post.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/c++11.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/warn_on.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/testcase_targets.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/exceptions.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/yacc.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/lex.prf \
		NumberSpeller.pro  main.cpp
QMAKE_TARGET  = NumberSpeller
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = NumberSpeller


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: NumberSpeller.pro /opt/Qt5.5.0/5.5/gcc_64/mkspecs/linux-g++/qmake.conf /opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/spec_pre.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/unix.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/linux.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/sanitize.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/gcc-base.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/gcc-base-unix.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/g++-base.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/g++-unix.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/qconfig.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dcore.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dcore_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dinput.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dinput_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquick.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquick_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquickrenderer.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquickrenderer_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3drenderer.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3drenderer_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_core.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_declarative.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_enginio.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_help.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_location.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_location_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_network.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_script.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webchannel.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webengine.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkit.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_websockets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webview_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/qt_functions.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/qt_config.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/linux-g++/qmake.conf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/spec_post.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/exclusive_builds.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/default_pre.prf \
		deployment.pri \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/resolve_config.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/default_post.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/c++11.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/warn_on.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/testcase_targets.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/exceptions.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/yacc.prf \
		/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/lex.prf \
		NumberSpeller.pro
	$(QMAKE) -spec linux-g++ CONFIG+=debug -o Makefile NumberSpeller.pro
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/spec_pre.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/unix.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/linux.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/sanitize.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/gcc-base.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/gcc-base-unix.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/g++-base.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/common/g++-unix.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/qconfig.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dcore.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dcore_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dinput.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dinput_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquick.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquick_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquickrenderer.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3dquickrenderer_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3drenderer.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_3drenderer_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_core.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_declarative.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designer.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_enginio.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_gui.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_help.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_location.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_location_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimedia.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_network.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_nfc.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_positioning.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qml.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quick.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_script.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_script_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_scripttools.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sensors.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_serialport.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sql.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_svg.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uiplugin.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webchannel.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webchannel_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webengine.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webengine_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginecore.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginecore_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginewidgets.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webenginewidgets_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkit.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_websockets.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_webview_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_x11extras.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xml.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/qt_functions.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/qt_config.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/linux-g++/qmake.conf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/spec_post.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/exclusive_builds.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/default_pre.prf:
deployment.pri:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/resolve_config.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/default_post.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/c++11.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/warn_on.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/testcase_targets.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/exceptions.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/yacc.prf:
/opt/Qt5.5.0/5.5/gcc_64/mkspecs/features/lex.prf:
NumberSpeller.pro:
qmake: FORCE
	@$(QMAKE) -spec linux-g++ CONFIG+=debug -o Makefile NumberSpeller.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


####### Sub-libraries

check: first

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/opt/NumberSpeller/bin || mkdir -p $(INSTALL_ROOT)/opt/NumberSpeller/bin
	-$(INSTALL_PROGRAM) $(QMAKE_TARGET) $(INSTALL_ROOT)/opt/NumberSpeller/bin/$(QMAKE_TARGET)

uninstall_target: FORCE
	-$(DEL_FILE) $(INSTALL_ROOT)/opt/NumberSpeller/bin/$(QMAKE_TARGET)
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/NumberSpeller/bin/ 


install: install_target  FORCE

uninstall: uninstall_target  FORCE

FORCE:

