.class public Lcom/layla/lvdb/Lvdb;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Lvdb.java"


# instance fields
.field private listenerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lvdb-jni"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/lvdb/Lvdb;->listenerCount:I

    return-void
.end method

.method private native lvdb_delete_embeddings_by_metadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native lvdb_exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native lvdb_query_top_n_similar(Ljava/lang/String;Ljava/lang/String;[FI)[Lcom/layla/lvdb/TopNSimilarEmbedding;
.end method

.method private native lvdb_save_embeddings(Ljava/lang/String;Ljava/lang/String;[FLjava/lang/String;)V
.end method

.method private native lvdb_save_to_disk(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method deleteEmbeddingsByMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/layla/lvdb/Lvdb;->lvdb_delete_embeddings_by_metadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 132
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/layla/lvdb/Lvdb;->lvdb_exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    .line 134
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Lvdb"

    return-object v0
.end method

.method public queryTopNSimilar(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ILcom/facebook/react/bridge/Promise;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 82
    :try_start_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    const-string v0, "Error"

    const-string v1, "Embedding length must be 1024"

    .line 83
    invoke-interface {p5, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    .line 88
    :goto_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 89
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/layla/lvdb/Lvdb;->lvdb_query_top_n_similar(Ljava/lang/String;Ljava/lang/String;[FI)[Lcom/layla/lvdb/TopNSimilarEmbedding;

    move-result-object p1

    .line 96
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 98
    array-length p3, p1

    move p4, v1

    :goto_1
    if-ge p4, p3, :cond_4

    aget-object v0, p1, p4

    .line 99
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "score"

    .line 101
    iget v4, v0, Lcom/layla/lvdb/TopNSimilarEmbedding;->score:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 103
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 105
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 106
    iget-object v5, v0, Lcom/layla/lvdb/TopNSimilarEmbedding;->embedding:Lcom/layla/lvdb/Embedding;

    iget-object v5, v5, Lcom/layla/lvdb/Embedding;->data:[F

    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    float-to-double v8, v8

    .line 107
    invoke-interface {v4, v8, v9}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const-string v5, "data"

    .line 109
    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 111
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 112
    iget-object v0, v0, Lcom/layla/lvdb/TopNSimilarEmbedding;->embedding:Lcom/layla/lvdb/Embedding;

    iget-object v0, v0, Lcom/layla/lvdb/Embedding;->metadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "metadata"

    .line 115
    invoke-interface {v3, v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v0, "embedding"

    .line 117
    invoke-interface {v2, v0, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 119
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 123
    :cond_4
    invoke-interface {p5, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p2, "ERROR"

    const-string p3, "Query failed"

    .line 125
    invoke-interface {p5, p2, p3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public saveEmbeddings(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 51
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    const-string v0, "Error"

    const-string v1, "Embedding length must be 1024"

    .line 52
    invoke-interface {p5, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 58
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/layla/lvdb/Lvdb;->lvdb_save_embeddings(Ljava/lang/String;Ljava/lang/String;[FLjava/lang/String;)V

    const/4 p1, 0x0

    .line 63
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method saveToDisk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/layla/lvdb/Lvdb;->lvdb_save_to_disk(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 75
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
