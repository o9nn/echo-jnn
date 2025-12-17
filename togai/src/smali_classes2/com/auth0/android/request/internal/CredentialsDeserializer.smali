.class public Lcom/auth0/android/request/internal/CredentialsDeserializer;
.super Ljava/lang/Object;
.source "CredentialsDeserializer.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/auth0/android/result/Credentials;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0010\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003JF\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0017J \u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/CredentialsDeserializer;",
        "Lcom/google/gson/JsonDeserializer;",
        "Lcom/auth0/android/result/Credentials;",
        "()V",
        "currentTimeInMillis",
        "",
        "getCurrentTimeInMillis",
        "()J",
        "createCredentials",
        "idToken",
        "",
        "accessToken",
        "type",
        "refreshToken",
        "expiresAt",
        "Ljava/util/Date;",
        "scope",
        "recoveryCode",
        "deserialize",
        "json",
        "Lcom/google/gson/JsonElement;",
        "typeOfT",
        "Ljava/lang/reflect/Type;",
        "context",
        "Lcom/google/gson/JsonDeserializationContext;",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/result/Credentials;
    .locals 8

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiresAt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/auth0/android/result/Credentials;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p7}, Lcom/auth0/android/result/Credentials;->setRecoveryCode$auth0_release(Ljava/lang/String;)V

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/result/Credentials;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeOfT"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 22
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "id_token"

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p3, p2, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string p2, "access_token"

    .line 25
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p3, p2, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo p2, "token_type"

    .line 26
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p3, p2, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const-string p2, "refresh_token"

    .line 28
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p3, p2, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const-string p2, "expires_in"

    .line 29
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p3, p2, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    const-string v0, "scope"

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-class v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/reflect/Type;

    invoke-interface {p3, v0, v5}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "recovery_code"

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-class v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/reflect/Type;

    invoke-interface {p3, v0, v5}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "expires_at"

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-class v0, Ljava/util/Date;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, v0}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 35
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/auth0/android/request/internal/CredentialsDeserializer;->getCurrentTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/16 v0, 0x3e8

    int-to-long v10, v0

    mul-long/2addr p2, v10

    add-long/2addr v8, p2

    invoke-direct {p1, v8, v9}, Ljava/util/Date;-><init>(J)V

    :cond_0
    move-object v5, p1

    const-string p1, "idToken"

    .line 38
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "accessToken"

    .line 39
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 40
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "expiresAt"

    .line 42
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 37
    invoke-virtual/range {v0 .. v7}, Lcom/auth0/android/request/internal/CredentialsDeserializer;->createCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/result/Credentials;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string p2, "credentials json is not a valid json object"

    invoke-direct {p1, p2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/request/internal/CredentialsDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/result/Credentials;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentTimeInMillis()J
    .locals 2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
