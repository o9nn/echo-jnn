.class public Lnet/openid/appauth/NoClientAuthentication;
.super Ljava/lang/Object;
.source "NoClientAuthentication.java"

# interfaces
.implements Lnet/openid/appauth/ClientAuthentication;


# static fields
.field public static final INSTANCE:Lnet/openid/appauth/NoClientAuthentication;

.field public static final NAME:Ljava/lang/String; = "none"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lnet/openid/appauth/NoClientAuthentication;

    invoke-direct {v0}, Lnet/openid/appauth/NoClientAuthentication;-><init>()V

    sput-object v0, Lnet/openid/appauth/NoClientAuthentication;->INSTANCE:Lnet/openid/appauth/NoClientAuthentication;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRequestParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "client_id"

    .line 64
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
