TARGET = RedmineConnector

QT += network xml

TEMPLATE = lib

DEFINES += REDMINECONNECTOR_LIBRARY

# RedmineConnector files

SOURCES += \
    MainWindow.cpp \
    MainMode.cpp \
    RedmineConnectorPlugin.cpp \
    Settings.cpp \
    SettingsWidget.cpp \
    NetworkAuthDialog.cpp \
    data/Project.cpp \
    data/User.cpp \
    data/Repository.cpp \
    data/Manager.cpp \
    data/IssueCategory.cpp \
    data/IssueStatus.cpp \
    data/Issue.cpp \
    TableItemIssue.cpp \
    data/Priority.cpp \
    IssueDetailWidget.cpp \
    TableItemProject.cpp

HEADERS +=\
    MainWindow.h \
    MainMode.h \
    RedmineConnectorGlobal.h \
    RedmineConnectorPlugin.h \
    RedmineConnectorConstants.h \
    Settings.h \
    SettingsWidget.h \
    NetworkAuthDialog.h \
    data/Project.h \
    data/User.h \
    data/Repository.h \
    data/Manager.h \
    data/IssueCategory.h \
    data/IssueStatus.h \
    SettingsRepository.h \
    data/Issue.h \
    TableItemIssue.h \
    data/Priority.h \
    data/IssueDetail.h \
    data/Tracker.h \
    IssueDetailWidget.h \
    TableItemProject.h

OTHER_FILES = RedmineConnector.pluginspec.in  \
RedmineConnector_dependencies.pri



# Qt Creator linking

## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):QTCREATOR_SOURCES=/usr/local/qt-creator-2.4.0-src

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE):IDE_BUILD_TREE=/usr/local/qt-creator-2.4.0-src/build

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\Nokia\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/Nokia/qtcreator" or "~/.local/share/Nokia/qtcreator" on Linux
##    "~/Library/Application Support/Nokia/Qt Creator" on Mac
# USE_USER_DESTDIR = yes

PROVIDER = kVibes

include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)
include($$QTCREATOR_SOURCES/src/plugins/coreplugin/coreplugin_dependencies.pri)

LIBS += -L$$IDE_PLUGIN_PATH/Nokia

FORMS += \
    MainWindow.ui \
    SettingsWidget.ui \
    NetworkAuthDialog.ui \
    TableItemIssue.ui \
    IssueDetailWidget.ui \
    TableItemProject.ui

RESOURCES += \
    RedmineConnector.qrc \

TRANSLATIONS += \
    i18n/RedmineConnector_de.ts \
    i18n/RedmineConnector_en.ts
