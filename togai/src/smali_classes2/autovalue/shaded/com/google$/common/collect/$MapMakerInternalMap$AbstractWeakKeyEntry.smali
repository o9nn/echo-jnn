.class abstract Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;
.super Ljava/lang/ref/WeakReference;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWeakKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final next:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;ITE;)V"
        }
    .end annotation

    .line 651
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    return-object v0
.end method
