.class Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;
.super Ljava/lang/Object;
.source "MetadataProcessor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/flogger/MetadataKey<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$1:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->this$1:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->i:I

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->this$1:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;

    .line 252
    iget-object v1, v1, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    invoke-static {v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->access$300(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/google/common/flogger/MetadataKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->this$1:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;

    .line 257
    iget-object v0, v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->this$1:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;

    iget-object v1, v1, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    invoke-static {v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->access$400(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->i:I

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->access$500(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;->next()Lcom/google/common/flogger/MetadataKey;

    move-result-object v0

    return-object v0
.end method
