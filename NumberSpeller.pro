TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++11
QMAKE_CXXFLAGS += -std=c++11

SOURCES += main.cpp \
    english.cpp \
    bahasa.cpp \
    english_number.cpp \
    bahasa_number.cpp \
    speller.cpp

include(deployment.pri)
qtcAddDeployment()

DISTFILES += \
    sample

HEADERS += \
    language.h \
    english.h \
    bahasa.h \
    number.h \
    english_number.h \
    bahasa_number.h \
    speller.h

