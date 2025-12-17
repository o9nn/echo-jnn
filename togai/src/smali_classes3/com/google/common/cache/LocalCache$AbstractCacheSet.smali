.class abstract Lcom/google/common/cache/LocalCache$AbstractCacheSet;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbstractCacheSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AbstractCacheSet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4424
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AbstractCacheSet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4437
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AbstractCacheSet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4432
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AbstractCacheSet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4427
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    return v0
.end method
