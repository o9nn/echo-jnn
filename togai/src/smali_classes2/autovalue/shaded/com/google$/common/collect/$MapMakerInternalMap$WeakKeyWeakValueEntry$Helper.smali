.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 886
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 883
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 916
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 920
    :cond_0
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 923
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->access$400(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->access$500(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 895
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 883
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 938
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->access$400(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 0

    .line 883
    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;>;II)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 908
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 883
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 929
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->access$500(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 900
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method
