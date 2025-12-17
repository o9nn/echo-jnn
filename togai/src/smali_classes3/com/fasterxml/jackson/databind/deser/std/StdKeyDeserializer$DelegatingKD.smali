.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelegatingKD"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-void
.end method


# virtual methods
.method public final deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 337
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering()Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 341
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 343
    invoke-virtual {v1, v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 347
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "not a valid representation: %s"

    invoke-virtual {p2, v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
