TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        CFPQ_tensor.c \
        main.c

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../GraphBLAS/build/release/ -lgraphblas
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../GraphBLAS/build/debug/ -lgraphblas
else:unix: LIBS += -L$$PWD/../../GraphBLAS/build/ -lgraphblas

INCLUDEPATH += $$PWD/../../GraphBLAS/Include
DEPENDPATH += $$PWD/../../GraphBLAS/Include
