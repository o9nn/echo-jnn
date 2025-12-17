.class public Lcom/google/common/flogger/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/MetadataKey$KeyValueHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final bloomFilterMask:J

.field private final canRepeat:Z

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;Z)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/google/common/flogger/util/Checks;->checkMetadataIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/MetadataKey;->label:Ljava/lang/String;

    const-string p1, "class"

    .line 131
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/flogger/MetadataKey;->clazz:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/google/common/flogger/MetadataKey;->canRepeat:Z

    .line 133
    invoke-direct {p0}, Lcom/google/common/flogger/MetadataKey;->createBloomFilterMaskFromSystemHashcode()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/flogger/MetadataKey;->bloomFilterMask:J

    return-void
.end method

.method private createBloomFilterMaskFromSystemHashcode()J
    .locals 7

    .line 248
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    and-int/lit8 v4, v0, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    or-long/2addr v1, v4

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static repeated(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/common/flogger/MetadataKey;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/flogger/MetadataKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static single(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/common/flogger/MetadataKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/google/common/flogger/MetadataKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/flogger/MetadataKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method


# virtual methods
.method public final canRepeat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/flogger/MetadataKey;->canRepeat:Z

    return v0
.end method

.method public final cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/MetadataKey;->clazz:Ljava/lang/Class;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public emit(Ljava/lang/Object;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/google/common/flogger/MetadataKey;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/google/common/flogger/MetadataKey$KeyValueHandler;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public emitRepeated(Ljava/util/Iterator;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/google/common/flogger/MetadataKey$KeyValueHandler;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/flogger/MetadataKey;->canRepeat:Z

    const-string v1, "non repeating key"

    .line 201
    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkState(ZLjava/lang/String;)V

    .line 202
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/flogger/MetadataKey;->emit(Ljava/lang/Object;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 226
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBloomFilterMask()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/flogger/MetadataKey;->bloomFilterMask:J

    return-wide v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/MetadataKey;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 221
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/MetadataKey;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/MetadataKey;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
