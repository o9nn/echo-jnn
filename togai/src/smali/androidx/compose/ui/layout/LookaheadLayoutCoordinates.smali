.class public interface abstract Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;
.super Ljava/lang/Object;
.source "LookaheadLayoutCoordinates.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutCoordinates;


# annotations
.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008w\u0018\u00002\u00020\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0001\u0008\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\t\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "localLookaheadPositionOf",
        "Landroidx/compose/ui/geometry/Offset;",
        "sourceCoordinates",
        "relativeToSource",
        "localLookaheadPositionOf-R5De75A",
        "(Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;J)J",
        "Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesImpl;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic localLookaheadPositionOf-R5De75A$default(Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;JILjava/lang/Object;)J
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 45
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p2

    .line 43
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localLookaheadPositionOf-R5De75A(Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: localLookaheadPositionOf-R5De75A"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract localLookaheadPositionOf-R5De75A(Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;J)J
.end method
