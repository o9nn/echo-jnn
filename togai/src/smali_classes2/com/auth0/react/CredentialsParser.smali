.class public Lcom/auth0/react/CredentialsParser;
.super Ljava/lang/Object;
.source "CredentialsParser.java"


# static fields
.field private static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "accessToken"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final EXPIRES_AT_KEY:Ljava/lang/String; = "expiresAt"

.field private static final ID_TOKEN_KEY:Ljava/lang/String; = "idToken"

.field private static final REFRESH_TOKEN_KEY:Ljava/lang/String; = "refreshToken"

.field private static final SCOPE:Ljava/lang/String; = "scope"

.field private static final TOKEN_TYPE_KEY:Ljava/lang/String; = "tokenType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/auth0/android/result/Credentials;
    .locals 10

    const-string v0, "idToken"

    .line 35
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "accessToken"

    .line 36
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "tokenType"

    .line 37
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "refreshToken"

    .line 38
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "scope"

    .line 39
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "expiresAt"

    .line 40
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 41
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 42
    new-instance p0, Lcom/auth0/android/result/Credentials;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object p0
.end method

.method public static toMap(Lcom/auth0/android/result/Credentials;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5

    .line 24
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v1, "accessToken"

    .line 25
    invoke-virtual {p0}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    const-string v3, "expiresAt"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    const-string v1, "idToken"

    .line 27
    invoke-virtual {p0}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scope"

    .line 28
    invoke-virtual {p0}, Lcom/auth0/android/result/Credentials;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refreshToken"

    .line 29
    invoke-virtual {p0}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tokenType"

    .line 30
    invoke-virtual {p0}, Lcom/auth0/android/result/Credentials;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
