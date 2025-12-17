.class Lcom/google/common/flogger/backend/MetadataHandler$Builder$2;
.super Ljava/lang/Object;
.source "MetadataHandler.java"

# interfaces
.implements Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataHandler$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/flogger/backend/MetadataHandler$RepeatedValueHandler<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method
