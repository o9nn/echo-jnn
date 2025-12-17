.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;
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
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 595
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 592
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 626
    invoke-virtual {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 604
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 592
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 639
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-direct {p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;-><init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)V

    return-object p1
.end method

.method public bridge synthetic newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 0

    .line 592
    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;>;II)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 618
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 592
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 609
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method
