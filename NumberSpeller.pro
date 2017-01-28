TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++11
QMAKE_CXXFLAGS += -std=c++11
QMAKE_CXXFLAGS -= -std=c++0x

SOURCES += main.cpp \
    proceduralway.cpp

include(deployment.pri)
qtcAddDeployment()

