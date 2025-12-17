.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 700
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 697
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 730
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 734
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->access$200(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 709
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 697
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 747
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->access$200(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;>;II)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 722
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 697
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 714
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method
