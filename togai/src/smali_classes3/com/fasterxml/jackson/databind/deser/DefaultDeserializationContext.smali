.class public abstract Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.super Lcom/fasterxml/jackson/databind/DeserializationContext;
.source "DefaultDeserializationContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _objectIdResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;"
        }
    .end annotation
.end field

.field protected transient _objectIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V

    return-void
.end method


# virtual methods
.method protected _unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 337
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 339
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Current token not START_OBJECT (needed to unwrap root name %s), but %s"

    .line 337
    invoke-virtual {p0, p2, v1, v3, v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 342
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 344
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Current token not FIELD_NAME (to contain expected root name %s), but %s"

    .line 342
    invoke-virtual {p0, p2, v1, v3, v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentName()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Root name (%s) does not match expected (%s) for type %s"

    .line 348
    invoke-virtual {p0, p2, v1, v3, v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    if-nez p4, :cond_3

    .line 356
    invoke-virtual {p3, p1, p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 358
    :cond_3
    invoke-virtual {p3, p1, p0, p4}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 361
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p4, v1, :cond_4

    .line 362
    sget-object p4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 364
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Current token not END_OBJECT (to match wrapper object with root name %s), but %s"

    .line 362
    invoke-virtual {p0, p2, p4, v0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object p3
.end method

.method public checkUnresolvedObjectId()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNRESOLVED_OBJECT_IDS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 161
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 163
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->hasReferringProperties()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->tryToResolveUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    .line 171
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    const-string v4, "Unresolved forward references for: "

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->withStackTrace()Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    move-result-object v1

    .line 174
    :cond_5
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->getKey()Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object v3

    iget-object v3, v3, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    .line 175
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->referringProperties()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;

    .line 177
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->getBeanType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->getLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v4

    invoke-virtual {v1, v3, v5, v4}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->addUnresolvedId(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-void

    .line 181
    :cond_7
    throw v1
.end method

.method public copy()Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DefaultDeserializationContext sub-class not overriding copy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createDummyInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method

.method public abstract createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method

.method protected createReadableObjectId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 1

    .line 147
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;-><init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)V

    return-object v0
.end method

.method public deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 216
    :cond_0
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v1, :cond_1

    .line 217
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_1

    .line 221
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_8

    .line 224
    check-cast p2, Ljava/lang/Class;

    .line 226
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq p2, v1, :cond_7

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 229
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->deserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 235
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 236
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    .line 235
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 240
    :goto_1
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz p1, :cond_5

    .line 241
    move-object p1, p2

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_5
    return-object p2

    .line 230
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; expected Class<JsonDeserializer>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-object v0

    .line 222
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned deserializer definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_1

    .line 101
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    if-nez p2, :cond_3

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    goto :goto_1

    .line 115
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 116
    invoke-interface {v1, p3}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 124
    invoke-interface {p3, p0}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->newForDeserialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v0

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    .line 125
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createReadableObjectId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object p2

    .line 129
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->setResolver(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 130
    invoke-virtual {p3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 256
    :cond_0
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    if-eqz v1, :cond_1

    .line 257
    check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    goto :goto_1

    .line 259
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_8

    .line 264
    check-cast p2, Ljava/lang/Class;

    .line 266
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq p2, v1, :cond_7

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 269
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 273
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 276
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 277
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    .line 276
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 281
    :goto_1
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz p1, :cond_5

    .line 282
    move-object p1, p2

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_5
    return-object p2

    .line 270
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; expected Class<KeyDeserializer>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-object v0

    .line 260
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readRootValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p4, :cond_1

    .line 323
    invoke-virtual {p3, p1, p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 325
    :cond_1
    invoke-virtual {p3, p1, p0, p4}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected tryToResolveUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;)Z
    .locals 0

    .line 197
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->tryToResolveUnresolved(Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result p1

    return p1
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method
