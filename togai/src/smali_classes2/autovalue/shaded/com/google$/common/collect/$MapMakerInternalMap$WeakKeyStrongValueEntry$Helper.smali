.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;
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
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 784
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 781
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 815
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 819
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->access$300(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 793
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 781
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 834
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->access$300(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 0

    .line 781
    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;>;II)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 807
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 781
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 825
    invoke-virtual {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 798
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method
