.class final Lcom/google/common/flogger/context/ScopeMetadata$Entry;
.super Ljava/lang/Object;
.source "ScopeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
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
.field final key:Lcom/google/common/flogger/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    .line 41
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/MetadataKey;

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopeMetadata$Entry;->key:Lcom/google/common/flogger/MetadataKey;

    const-string p1, "value"

    .line 42
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/ScopeMetadata$Entry;->value:Ljava/lang/Object;

    return-void
.end method
