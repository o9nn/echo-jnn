.class public abstract Lcom/google/common/flogger/backend/MetadataHandler;
.super Ljava/lang/Object;
.source "MetadataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/MetadataHandler$MapBasedhandler;,
        Lcom/google/common/flogger/backend/MetadataHandler$Builder;,
        Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;,
        Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;)Lcom/google/common/flogger/backend/MetadataHandler$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler<",
            "Ljava/lang/Object;",
            "TC;>;)",
            "Lcom/google/common/flogger/backend/MetadataHandler$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/common/flogger/backend/MetadataHandler$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/backend/MetadataHandler$Builder;-><init>(Lcom/google/common/flogger/backend/MetadataHandler$ValueHandler;Lcom/google/common/flogger/backend/MetadataHandler$1;)V

    return-object v0
.end method


# virtual methods
.method protected abstract handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;TC;)V"
        }
    .end annotation
.end method

.method protected handleRepeated(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;TC;)V"
        }
    .end annotation

    .line 64
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/flogger/backend/MetadataHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
