.class Lcom/layla/lvdb/Embedding;
.super Ljava/lang/Object;
.source "Lvdb.java"


# instance fields
.field public data:[F

.field public metadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/layla/lvdb/Embedding;->data:[F

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layla/lvdb/Embedding;->metadata:Ljava/util/HashMap;

    return-void
.end method
