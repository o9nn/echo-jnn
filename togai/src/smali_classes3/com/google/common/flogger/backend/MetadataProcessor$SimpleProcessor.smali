.class final Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;
.super Lcom/google/common/flogger/backend/MetadataProcessor;
.source "MetadataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleProcessor"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)V
    .locals 2

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$1;)V

    .line 387
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 388
    invoke-static {v0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->addTo(Ljava/util/Map;Lcom/google/common/flogger/backend/Metadata;)V

    .line 389
    invoke-static {v0, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->addTo(Ljava/util/Map;Lcom/google/common/flogger/backend/Metadata;)V

    .line 391
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 392
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flogger/MetadataKey;

    invoke-virtual {v1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->map:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/MetadataProcessor$1;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;-><init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)V

    return-void
.end method

.method private static addTo(Ljava/util/Map;Lcom/google/common/flogger/backend/Metadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/flogger/backend/Metadata;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 402
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 403
    invoke-virtual {p1, v0}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v1

    .line 404
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 405
    invoke-virtual {v1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 416
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dispatch(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p2, p0, p1, p3}, Lcom/google/common/flogger/backend/MetadataHandler;->handleRepeated(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/common/flogger/backend/MetadataHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSingleValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 440
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "key must be single valued"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->map:Ljava/util/Map;

    .line 441
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public handle(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->map:Ljava/util/Map;

    .line 430
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {p1, v0, p2, p3}, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->dispatch(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public keyCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->map:Ljava/util/Map;

    .line 447
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->map:Ljava/util/Map;

    .line 452
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->map:Ljava/util/Map;

    .line 423
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/MetadataKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$SimpleProcessor;->dispatch(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
