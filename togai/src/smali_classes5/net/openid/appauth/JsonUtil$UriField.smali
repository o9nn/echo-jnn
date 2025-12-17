.class final Lnet/openid/appauth/JsonUtil$UriField;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UriField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/openid/appauth/JsonUtil$Field<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 507
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method convert(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 519
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 502
    invoke-virtual {p0, p1}, Lnet/openid/appauth/JsonUtil$UriField;->convert(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
