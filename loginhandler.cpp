#include "loginhandler.h"

LoginHandler::LoginHandler(QObject *parent) : QObject(parent)
{

}
void LoginHandler::loginIn(QString username, QString password)
{

    qDebug()<<"making req";

    QNetworkAccessManager* networkManager = new QNetworkAccessManager(this);

    QString concatenated = username + ":" + password ; //username:password
    QByteArray data = concatenated.toLocal8Bit().toBase64();
    QString headerData = "Basic " + data;

    QNetworkRequest request=QNetworkRequest(QUrl("https://myanimelist.net/api/account/verify_credentials.xml"));

    request.setRawHeader("Authorization", headerData.toLocal8Bit());

    QNetworkReply* reply = networkManager->get(request);
    connect(networkManager, SIGNAL ( finished (QNetworkReply*) ), this, SLOT( finishedSlot(QNetworkReply*) ) );

}

void LoginHandler::finishedSlot(QNetworkReply* reply){
    qDebug()<<"finished";

    QByteArray bytes = reply->readAll();
    QString str = QString::fromUtf8(bytes.data(), bytes.size());
    int statusCode = reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();

    if (statusCode == 200)
        emit loggedIn();
}
