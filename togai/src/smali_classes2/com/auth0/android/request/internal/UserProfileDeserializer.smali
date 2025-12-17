.class Lcom/auth0/android/request/internal/UserProfileDeserializer;
.super Ljava/lang/Object;
.source "UserProfileDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/auth0/android/result/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final iso8601DateGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/auth0/android/request/internal/UserProfileDeserializer;->iso8601DateGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/result/UserProfile;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "json",
            "typeOfT",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string v3, "name"

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-string v3, "nickname"

    .line 35
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const-string v3, "picture"

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const-string v3, "email"

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    const-string v3, "given_name"

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    const-string v3, "family_name"

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    const-string v3, "email_verified"

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    invoke-interface {v1, v3, v4}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    move-object v10, v3

    iget-object v3, v0, Lcom/auth0/android/request/internal/UserProfileDeserializer;->iso8601DateGson:Lcom/google/gson/Gson;

    const-string v4, "created_at"

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-class v12, Ljava/util/Date;

    invoke-virtual {v3, v4, v12}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/util/Date;

    .line 44
    new-instance v3, Lcom/auth0/android/request/internal/UserProfileDeserializer$1;

    invoke-direct {v3, v0}, Lcom/auth0/android/request/internal/UserProfileDeserializer$1;-><init>(Lcom/auth0/android/request/internal/UserProfileDeserializer;)V

    invoke-virtual {v3}, Lcom/auth0/android/request/internal/UserProfileDeserializer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "identities"

    .line 45
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/List;

    .line 47
    new-instance v3, Lcom/auth0/android/request/internal/UserProfileDeserializer$2;

    invoke-direct {v3, v0}, Lcom/auth0/android/request/internal/UserProfileDeserializer$2;-><init>(Lcom/auth0/android/request/internal/UserProfileDeserializer;)V

    invoke-virtual {v3}, Lcom/auth0/android/request/internal/UserProfileDeserializer$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string/jumbo v4, "user_metadata"

    .line 48
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/util/Map;

    const-string v4, "app_metadata"

    .line 49
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/util/Map;

    .line 50
    invoke-interface {v1, v2, v3}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/Map;

    .line 51
    new-instance v1, Lcom/auth0/android/result/UserProfile;

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lcom/auth0/android/result/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1

    .line 29
    :cond_1
    new-instance v1, Lcom/google/gson/JsonParseException;

    const-string/jumbo v2, "user profile json is not a valid json object"

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "json",
            "typeOfT",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/request/internal/UserProfileDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/result/UserProfile;

    move-result-object p1

    return-object p1
.end method
