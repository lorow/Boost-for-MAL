#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "loginhandler.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QQmlContext* ctx = engine.rootContext();

    LoginHandler loginHandler;

    ctx->setContextProperty("loginReciver", &loginHandler);

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
