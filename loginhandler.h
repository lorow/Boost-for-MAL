#ifndef LOGINHANDLER_H
#define LOGINHANDLER_H

#include <QUrl>
#include <QObject>
#include <QtDebug>
#include <QByteArray>
#include <QString>
#include <QtNetwork>
#include <QVariant>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QNetworkAccessManager>
class LoginHandler : public QObject
{
    Q_OBJECT    

public:
    explicit LoginHandler(QObject *parent = nullptr);

signals:
    void loggedIn();
private slots:
        void finishedSlot (QNetworkReply* reply);
public slots:
    void loginIn(QString username, QString password);
};

#endif // LOGINHANDLER_H
