#############################################################################
# Makefile for building: orientation
# Generated by qmake (2.01a) (Qt 4.7.2) on: Mar 15. Mar 19:00:59 2011
# Project:  chavita.pro
# Template: app
# Command: f:\qtsdk\symbian\sdks\symbian1qt472\bin\qmake.exe -spec ..\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\symbian-abld CONFIG+=release -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc QMLJSDEBUGGER_PATH=F:/QtSDK/QtCreator/share/qtcreator/qml/qmljsdebugger -o bld.inf chavita.pro
#############################################################################

MAKEFILE          = Makefile
QMAKE             = f:\qtsdk\symbian\sdks\symbian1qt472\bin\qmake.exe
DEL_FILE          = del 2> NUL
DEL_DIR           = rmdir
MOVE              = move
CHK_DIR_EXISTS    = if not exist
MKDIR             = mkdir
XCOPY             = xcopy /d /f /h /r /y /i
ABLD              = ABLD.BAT
DEBUG_PLATFORMS   = winscw gcce armv5 armv6
RELEASE_PLATFORMS = gcce armv5 armv6
MAKE              = make

ifeq (WINS,$(findstring WINS, $(PLATFORM)))
ZDIR=$(EPOCROOT)epoc32\release\$(PLATFORM)\$(CFG)\z
else
ZDIR=$(EPOCROOT)epoc32\data\z
endif

DEFINES	 = -DSYMBIAN -DUNICODE -DQT_KEYPAD_NAVIGATION -DQT_SOFTKEYS_ENABLED -DQT_USE_MATH_H_FLOATS -DQT_NO_DEBUG -DQT_DECLARATIVE_LIB -DQT_GUI_LIB -DQT_CORE_LIB
INCPATH	 =  -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtCore" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtCore/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtGui" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtGui/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtDeclarative" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtDeclarative/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtSensors" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/include/QtSensors/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/mkspecs/common/symbian" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/mkspecs/common/symbian/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/stdapis" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/stdapis/sys" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/middleware" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/mw" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/platform/mw" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/platform" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/platform/loc" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/platform/mw/loc" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/platform/loc/sc" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/platform/mw/loc/sc" -I"F:/QtMobility" -I"F:/QtMobility/tmp" -I"F:/QtSensors" -I"F:/QtSensors/tmp" -I"F:/QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/include/stdapis/stlport" -I"F:/chavita/moc" -I"F:/chavita/moc/tmp" -I"F:/chavita/ui" -I"F:/chavita/ui/tmp" -I"F:/chavita" -I"F:/chavita/tmp" -I"F:/chavita/rcc" -I"F:/chavita/rcc/tmp"
first: default
default: debug-winscw
all: debug release

qmake:
	$(QMAKE) "F:/chavita/chavita.pro"  -spec ..\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\symbian-abld CONFIG+=release -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc QMLJSDEBUGGER_PATH=F:/QtSDK/QtCreator/share/qtcreator/qml/qmljsdebugger

bld.inf: F:/chavita/chavita.pro
	$(QMAKE) "F:/chavita/chavita.pro"  -spec ..\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\symbian-abld CONFIG+=release -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc QMLJSDEBUGGER_PATH=F:/QtSDK/QtCreator/share/qtcreator/qml/qmljsdebugger

$(ABLD): bld.inf
	bldmake bldfiles

f:\chavita\orientation.loc: 
	$(QMAKE) "F:/chavita/chavita.pro"  -spec ..\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\symbian-abld CONFIG+=release -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc QMLJSDEBUGGER_PATH=F:/QtSDK/QtCreator/share/qtcreator/qml/qmljsdebugger

debug: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build winscw udeb
	$(ABLD) build gcce udeb
	$(ABLD) build armv5 udeb
	$(ABLD) build armv6 udeb

release: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build gcce urel
	$(ABLD) build armv5 urel
	$(ABLD) build armv6 urel

debug-winscw: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build winscw udeb
debug-gcce: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build gcce udeb
debug-armv5: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build armv5 udeb
debug-armv6: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build armv6 udeb
release-gcce: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build gcce urel
release-armv5: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build armv5 urel
release-armv6: f:\chavita\orientation.loc $(ABLD)
	$(ABLD) build armv6 urel

export: $(ABLD)
	$(ABLD) export

cleanexport: $(ABLD)
	$(ABLD) cleanexport

check: first

run:
	call /QtSDK/Symbian/SDKs/Symbian1Qt472/epoc32/release/winscw/udeb/orientation.exe $(QT_RUN_OPTIONS)

runonphone: sis
	runonphone $(QT_RUN_ON_PHONE_OPTIONS) --sis orientation.sis orientation.exe $(QT_RUN_OPTIONS)

orientation_template.pkg: F:/chavita/chavita.pro
	$(MAKE) -f $(MAKEFILE) qmake

orientation_installer.pkg: F:/chavita/chavita.pro
	$(MAKE) -f $(MAKEFILE) qmake

orientation_stub.pkg: F:/chavita/chavita.pro
	$(MAKE) -f $(MAKEFILE) qmake

sis: orientation_template.pkg
	$(if $(wildcard .make.cache), $(MAKE) -f $(MAKEFILE) ok_sis MAKEFILES=.make.cache , $(if $(QT_SIS_TARGET), $(MAKE) -f $(MAKEFILE) ok_sis , $(MAKE) -f $(MAKEFILE) fail_sis_nocache ) )

ok_sis:
	createpackage $(QT_SIS_OPTIONS) orientation_template.pkg $(QT_SIS_TARGET) $(QT_SIS_CERTIFICATE) $(QT_SIS_KEY) $(QT_SIS_PASSPHRASE)

unsigned_sis: orientation_template.pkg
	$(if $(wildcard .make.cache), $(MAKE) -f $(MAKEFILE) ok_unsigned_sis MAKEFILES=.make.cache , $(if $(QT_SIS_TARGET), $(MAKE) -f $(MAKEFILE) ok_unsigned_sis , $(MAKE) -f $(MAKEFILE) fail_sis_nocache ) )

ok_unsigned_sis:
	createpackage $(QT_SIS_OPTIONS) -o orientation_template.pkg $(QT_SIS_TARGET)

orientation.sis:
	$(MAKE) -f $(MAKEFILE) sis

installer_sis: orientation_installer.pkg sis
	$(MAKE) -f $(MAKEFILE) ok_installer_sis

ok_installer_sis: orientation_installer.pkg
	createpackage $(QT_SIS_OPTIONS) orientation_installer.pkg - $(QT_SIS_CERTIFICATE) $(QT_SIS_KEY) $(QT_SIS_PASSPHRASE)

unsigned_installer_sis: orientation_installer.pkg unsigned_sis
	$(MAKE) -f $(MAKEFILE) ok_unsigned_installer_sis

ok_unsigned_installer_sis: orientation_installer.pkg
	createpackage $(QT_SIS_OPTIONS) -o orientation_installer.pkg

fail_sis_nocache:
	$(error Project has to be built or QT_SIS_TARGET environment variable has to be set before calling 'SIS' target)

stub_sis: orientation_stub.pkg
	$(if $(wildcard .make.cache), $(MAKE) -f $(MAKEFILE) ok_stub_sis MAKEFILES=.make.cache , $(if $(QT_SIS_TARGET), $(MAKE) -f $(MAKEFILE) ok_stub_sis , $(MAKE) -f $(MAKEFILE) fail_sis_nocache ) )

ok_stub_sis:
	createpackage -s $(QT_SIS_OPTIONS) orientation_stub.pkg $(QT_SIS_TARGET) $(QT_SIS_CERTIFICATE) $(QT_SIS_KEY) $(QT_SIS_PASSPHRASE)

store_build:
	@echo # ============================================================================== > .make.cache && echo # This file is generated by make and should not be modified by the user >> .make.cache && echo # Name : .make.cache >> .make.cache && echo # Part of : lineedits >> .make.cache && echo # Description : This file is used to cache last build target for >> .make.cache && echo # make sis target. >> .make.cache && echo # Version : >> .make.cache && echo # >> .make.cache && echo # ============================================================================== >> .make.cache && echo QT_SIS_TARGET ?= $(QT_SIS_TARGET) >> .make.cache

deploy: sis
	call orientation.sis

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc\moc_mainwindow.cpp moc\moc_orientationfilter.cpp moc\moc_screensize.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc\moc_mainwindow.cpp moc\moc_orientationfilter.cpp moc\moc_screensize.cpp
moc\moc_mainwindow.cpp: mainwindow.h
	F:\QtSDK\Symbian\SDKs\Symbian1Qt472\bin\moc.exe $(DEFINES) $(INCPATH) -DSYMBIAN mainwindow.h -o moc\moc_mainwindow.cpp

moc\moc_orientationfilter.cpp: orientationfilter.h
	F:\QtSDK\Symbian\SDKs\Symbian1Qt472\bin\moc.exe $(DEFINES) $(INCPATH) -DSYMBIAN orientationfilter.h -o moc\moc_orientationfilter.cpp

moc\moc_screensize.cpp: screensize.h
	F:\QtSDK\Symbian\SDKs\Symbian1Qt472\bin\moc.exe $(DEFINES) $(INCPATH) -DSYMBIAN screensize.h -o moc\moc_screensize.cpp

compiler_rcc_make_all: rcc\qrc_QML.cpp
compiler_rcc_clean:
	-$(DEL_FILE) rcc\qrc_QML.cpp
rcc\qrc_QML.cpp: QML.qrc \
		qml\main.qml \
		qml\images\buttons\iBoton.svgz \
		qml\images\buttons\splashes\iMancha8.png \
		qml\images\buttons\splashes\iMancha6.png \
		qml\images\buttons\splashes\iMancha9.png \
		qml\images\buttons\splashes\iMancha4.png \
		qml\images\buttons\splashes\iMancha7.png \
		qml\images\buttons\splashes\iMancha10.png \
		qml\images\buttons\splashes\iMancha2.png \
		qml\images\buttons\splashes\iMancha11.png \
		qml\images\buttons\splashes\iMancha5.png \
		qml\images\buttons\splashes\iMancha12.png \
		qml\images\buttons\splashes\iMancha0.png \
		qml\images\buttons\splashes\iMancha13.png \
		qml\images\buttons\splashes\iMancha3.png \
		qml\images\buttons\splashes\iMancha14.png \
		qml\images\buttons\splashes\iMancha15.png \
		qml\images\buttons\splashes\iMancha1.png \
		qml\images\wallpapers\iFondo1.png \
		qml\ChavitaCore\Button.qml \
		qml\ChavitaCore\javascript.js
	f:\QtSDK\Symbian\SDKs\Symbian1Qt472\bin\rcc.exe -name QML QML.qrc -o rcc\qrc_QML.cpp

compiler_image_collection_make_all: ui\qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) ui\qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui\ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui\ui_mainwindow.h
ui\ui_mainwindow.h: mainwindow.ui
	f:\QtSDK\Symbian\SDKs\Symbian1Qt472\bin\uic.exe mainwindow.ui -o ui\ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

create_temps:
	-@ if not exist "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtCore\tmp" mkdir "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtCore\tmp"
	-@ if not exist "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtGui\tmp" mkdir "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtGui\tmp"
	-@ if not exist "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtDeclarative\tmp" mkdir "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtDeclarative\tmp"
	-@ if not exist "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\tmp" mkdir "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\tmp"
	-@ if not exist "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtSensors\tmp" mkdir "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtSensors\tmp"
	-@ if not exist "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\common\symbian\tmp" mkdir "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\common\symbian\tmp"
	-@ if not exist "F:\QtMobility\tmp" mkdir "F:\QtMobility\tmp"
	-@ if not exist "F:\QtSensors\tmp" mkdir "F:\QtSensors\tmp"
	-@ if not exist "F:\chavita\moc\tmp" mkdir "F:\chavita\moc\tmp"
	-@ if not exist "F:\chavita\ui\tmp" mkdir "F:\chavita\ui\tmp"
	-@ if not exist "F:\chavita\tmp" mkdir "F:\chavita\tmp"
	-@ if not exist "F:\chavita\rcc\tmp" mkdir "F:\chavita\rcc\tmp"

extension_clean: compiler_clean
	-@ if EXIST "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtCore\tmp" rmdir /s /q  "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtCore\tmp"
	-@ if EXIST "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtGui\tmp" rmdir /s /q  "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtGui\tmp"
	-@ if EXIST "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtDeclarative\tmp" rmdir /s /q  "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtDeclarative\tmp"
	-@ if EXIST "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\tmp" rmdir /s /q  "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\tmp"
	-@ if EXIST "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtSensors\tmp" rmdir /s /q  "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\include\QtSensors\tmp"
	-@ if EXIST "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\common\symbian\tmp" rmdir /s /q  "F:\QtSDK\Symbian\SDKs\Symbian1Qt472\mkspecs\common\symbian\tmp"
	-@ if EXIST "F:\QtMobility\tmp" rmdir /s /q  "F:\QtMobility\tmp"
	-@ if EXIST "F:\QtSensors\tmp" rmdir /s /q  "F:\QtSensors\tmp"
	-@ if EXIST "F:\chavita\moc\tmp" rmdir /s /q  "F:\chavita\moc\tmp"
	-@ if EXIST "F:\chavita\ui\tmp" rmdir /s /q  "F:\chavita\ui\tmp"
	-@ if EXIST "F:\chavita\tmp" rmdir /s /q  "F:\chavita\tmp"
	-@ if EXIST "F:\chavita\rcc\tmp" rmdir /s /q  "F:\chavita\rcc\tmp"

pre_targetdeps: \
	generated_sources \
	all_source_deps \
	ui\ui_mainwindow.h

generated_sources: \
	moc\moc_mainwindow.cpp \
	moc\moc_orientationfilter.cpp \
	moc\moc_screensize.cpp \
	rcc\qrc_QML.cpp

all_source_deps: \
	mainwindow.h \
	orientationfilter.h \
	screensize.h \
	ui\ui_mainwindow.h

finalize:

winscw_deployment:

winscw_deployment_clean:

deployment:

deployment_clean:

dodistclean:
	-@ if EXIST "f:\chavita\orientation_template.pkg" $(DEL_FILE)  "f:\chavita\orientation_template.pkg"
	-@ if EXIST "f:\chavita\orientation_stub.pkg" $(DEL_FILE)  "f:\chavita\orientation_stub.pkg"
	-@ if EXIST "f:\chavita\orientation_installer.pkg" $(DEL_FILE)  "f:\chavita\orientation_installer.pkg"
	-@ if EXIST "f:\chavita\Makefile" $(DEL_FILE)  "f:\chavita\Makefile"
	-@ if EXIST "f:\chavita\Makefile_orientation_exe.mk" $(DEL_FILE)  "f:\chavita\Makefile_orientation_exe.mk"
	-@ if EXIST "f:\chavita\orientation_exe.mmp" $(DEL_FILE)  "f:\chavita\orientation_exe.mmp"
	-@ if EXIST "f:\chavita\orientation_reg.rss" $(DEL_FILE)  "f:\chavita\orientation_reg.rss"
	-@ if EXIST "f:\chavita\orientation.rss" $(DEL_FILE)  "f:\chavita\orientation.rss"
	-@ if EXIST "f:\chavita\orientation.loc" $(DEL_FILE)  "f:\chavita\orientation.loc"
	-@ if EXIST "f:\chavita\bld.inf" $(DEL_FILE)  "f:\chavita\bld.inf"

distclean: clean dodistclean

clean: $(ABLD)
	-$(ABLD) reallyclean
	-bldmake clean

clean-debug: $(ABLD)
	$(ABLD) reallyclean winscw udeb
	$(ABLD) reallyclean gcce udeb
	$(ABLD) reallyclean armv5 udeb
	$(ABLD) reallyclean armv6 udeb

clean-release: $(ABLD)
	$(ABLD) reallyclean gcce urel
	$(ABLD) reallyclean armv5 urel
	$(ABLD) reallyclean armv6 urel

clean-debug-winscw: $(ABLD)
	$(ABLD) reallyclean winscw udeb
clean-debug-gcce: $(ABLD)
	$(ABLD) reallyclean gcce udeb
clean-debug-armv5: $(ABLD)
	$(ABLD) reallyclean armv5 udeb
clean-debug-armv6: $(ABLD)
	$(ABLD) reallyclean armv6 udeb
clean-release-gcce: $(ABLD)
	$(ABLD) reallyclean gcce urel
clean-release-armv5: $(ABLD)
	$(ABLD) reallyclean armv5 urel
clean-release-armv6: $(ABLD)
	$(ABLD) reallyclean armv6 urel

freeze: $(ABLD)
	$(ABLD) freeze

freeze-debug: freeze

freeze-release: freeze

freeze-debug-winscw: $(ABLD)
	$(ABLD) freeze winscw
freeze-debug-gcce: $(ABLD)
	$(ABLD) freeze gcce
freeze-debug-armv5: $(ABLD)
	$(ABLD) freeze armv5
freeze-debug-armv6: $(ABLD)
	$(ABLD) freeze armv6
freeze-release-gcce: $(ABLD)
	$(ABLD) freeze gcce
freeze-release-armv5: $(ABLD)
	$(ABLD) freeze armv5
freeze-release-armv6: $(ABLD)
	$(ABLD) freeze armv6

