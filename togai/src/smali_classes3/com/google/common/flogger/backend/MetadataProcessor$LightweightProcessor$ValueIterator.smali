.class final Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;
.super Ljava/lang/Object;
.source "MetadataProcessor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final key:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mask:I

.field private nextIndex:I

.field final synthetic this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;Lcom/google/common/flogger/MetadataKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->key:Lcom/google/common/flogger/MetadataKey;

    and-int/lit8 p1, p3, 0x1f

    iput p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->nextIndex:I

    add-int/lit8 p1, p1, 0x5

    ushr-int p1, p3, p1

    iput p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->mask:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataProcessor$1;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;Lcom/google/common/flogger/MetadataKey;I)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->nextIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->key:Lcom/google/common/flogger/MetadataKey;

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    iget v2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->nextIndex:I

    .line 301
    invoke-static {v1, v2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->access$700(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->mask:I

    if-eqz v1, :cond_0

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->mask:I

    ushr-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->mask:I

    iget v2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->nextIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->nextIndex:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;->nextIndex:I

    :goto_0
    return-object v0
.end method
