.class public interface abstract Lnet/openid/appauth/connectivity/ConnectionBuilder;
.super Ljava/lang/Object;
.source "ConnectionBuilder.java"


# virtual methods
.method public abstract openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
