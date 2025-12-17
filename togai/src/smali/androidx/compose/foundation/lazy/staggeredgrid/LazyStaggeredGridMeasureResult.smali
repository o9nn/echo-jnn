.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002Bv\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\r\u0012\u0006\u0010\u0016\u001a\u00020\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\t\u00106\u001a\u000207H\u0096\u0001R\u0014\u0010\u0016\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\r0\u001bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0015\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010!R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u0012\u0010(\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0019R\u0014\u0010\u0014\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0019R\u001f\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u00100\u001a\u0004\u0008.\u0010/R\u0014\u0010\u0013\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0019R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0012\u00104\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u0019\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00068"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "firstVisibleItemIndices",
        "",
        "firstVisibleItemScrollOffsets",
        "consumedScroll",
        "",
        "measureResult",
        "canScrollForward",
        "",
        "canScrollBackward",
        "totalItemsCount",
        "",
        "visibleItemsInfo",
        "",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "viewportStartOffset",
        "viewportEndOffset",
        "beforeContentPadding",
        "afterContentPadding",
        "([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZILjava/util/List;JIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAfterContentPadding",
        "()I",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "getAlignmentLines",
        "()Ljava/util/Map;",
        "getBeforeContentPadding",
        "getCanScrollBackward",
        "()Z",
        "getCanScrollForward",
        "getConsumedScroll",
        "()F",
        "getFirstVisibleItemIndices",
        "()[I",
        "getFirstVisibleItemScrollOffsets",
        "height",
        "getHeight",
        "getMeasureResult",
        "()Landroidx/compose/ui/layout/MeasureResult;",
        "getTotalItemsCount",
        "getViewportEndOffset",
        "getViewportSize-YbymL2g",
        "()J",
        "J",
        "getViewportStartOffset",
        "getVisibleItemsInfo",
        "()Ljava/util/List;",
        "width",
        "getWidth",
        "placeChildren",
        "",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final canScrollBackward:Z

.field private final canScrollForward:Z

.field private final consumedScroll:F

.field private final firstVisibleItemIndices:[I

.field private final firstVisibleItemScrollOffsets:[I

.field private final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private final totalItemsCount:I

.field private final viewportEndOffset:I

.field private final viewportSize:J

.field private final viewportStartOffset:I

.field private final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZILjava/util/List;JIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[IF",
            "Landroidx/compose/ui/layout/MeasureResult;",
            "ZZI",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;JIIII)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemIndices:[I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemScrollOffsets:[I

    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->consumedScroll:F

    iput-object p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollForward:Z

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollBackward:Z

    iput p7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->totalItemsCount:I

    iput-object p8, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    iput-wide p9, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportSize:J

    iput p11, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportStartOffset:I

    iput p12, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportEndOffset:I

    iput p13, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->beforeContentPadding:I

    iput p14, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->afterContentPadding:I

    return-void
.end method

.method public synthetic constructor <init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZILjava/util/List;JIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZILjava/util/List;JIIII)V

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->afterContentPadding:I

    return v0
.end method

.method public getAlignmentLines()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeContentPadding()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->beforeContentPadding:I

    return v0
.end method

.method public final getCanScrollBackward()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollBackward:Z

    return v0
.end method

.method public final getCanScrollForward()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollForward:Z

    return v0
.end method

.method public final getConsumedScroll()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->consumedScroll:F

    return v0
.end method

.method public final getFirstVisibleItemIndices()[I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemIndices:[I

    return-object v0
.end method

.method public final getFirstVisibleItemScrollOffsets()[I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemScrollOffsets:[I

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    return-object v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->totalItemsCount:I

    return v0
.end method

.method public getViewportEndOffset()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportEndOffset:I

    return v0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportSize:J

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportStartOffset:I

    return v0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    return v0
.end method

.method public placeChildren()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
