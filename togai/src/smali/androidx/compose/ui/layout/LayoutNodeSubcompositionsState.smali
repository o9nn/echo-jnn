.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 5 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,767:1\n700#1:789\n700#1:796\n700#1:810\n700#1:815\n357#2,7:768\n357#2,7:775\n357#2,7:801\n480#3,4:782\n485#3:795\n122#4,3:786\n126#4:794\n1061#5,4:790\n1061#5,4:797\n1061#5,4:811\n1061#5,4:816\n1061#5,4:820\n1061#5,2:824\n1063#5,2:828\n211#6,2:808\n1851#7,2:826\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n*L\n439#1:789\n499#1:796\n688#1:810\n694#1:815\n398#1:768,7\n426#1:775,7\n623#1:801,7\n438#1:782,4\n438#1:795\n438#1:786,3\n438#1:794\n439#1:790,4\n499#1:797,4\n688#1:811,4\n694#1:816,4\n700#1:820,4\n703#1:824,2\n703#1:828,2\n679#1:808,2\n704#1:826,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0002MNB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u0010!\u001a\u00020\"2\u001d\u0010#\u001a\u0019\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0$\u00a2\u0006\u0002\u0008(\u00f8\u0001\u0000J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0010H\u0002J\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u0010J\u0006\u0010/\u001a\u00020,J\u0012\u00100\u001a\u0004\u0018\u00010\u00012\u0006\u0010*\u001a\u00020\u0010H\u0002J\u0017\u00101\u001a\u00020,2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020,02H\u0082\u0008J\u0006\u00103\u001a\u00020,J\"\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00102\u0008\u0008\u0002\u00107\u001a\u00020\u0010H\u0002J(\u00108\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010\u00012\u0011\u0010;\u001a\r\u0012\u0004\u0012\u00020,02\u00a2\u0006\u0002\u0008<\u00a2\u0006\u0002\u0010=J\u0018\u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u0013H\u0002J2\u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020\u00032\u0008\u0010:\u001a\u0004\u0018\u00010\u00012\u0011\u0010;\u001a\r\u0012\u0004\u0012\u00020,02\u00a2\u0006\u0002\u0008<H\u0002\u00a2\u0006\u0002\u0010AJ.\u0010>\u001a\u0008\u0012\u0004\u0012\u00020C0B2\u0008\u0010:\u001a\u0004\u0018\u00010\u00012\u0011\u0010;\u001a\r\u0012\u0004\u0012\u00020,02\u00a2\u0006\u0002\u0008<\u00a2\u0006\u0002\u0010DJ:\u0010E\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010F2\u0006\u0010H\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\n2\u0011\u0010J\u001a\r\u0012\u0004\u0012\u00020,02\u00a2\u0006\u0002\u0008<H\u0002\u00a2\u0006\u0002\u0010KJ\u0014\u0010L\u001a\u0004\u0018\u00010\u00032\u0008\u0010:\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00030\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00060\u001aR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00030\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006O"
    }
    d2 = {
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;",
        "",
        "root",
        "Landroidx/compose/ui/node/LayoutNode;",
        "slotReusePolicy",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V",
        "NoIntrinsicsMessage",
        "",
        "compositionContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "getCompositionContext",
        "()Landroidx/compose/runtime/CompositionContext;",
        "setCompositionContext",
        "(Landroidx/compose/runtime/CompositionContext;)V",
        "currentIndex",
        "",
        "nodeToNodeState",
        "",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
        "precomposeMap",
        "precomposedCount",
        "reusableCount",
        "reusableSlotIdsSet",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;",
        "scope",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;",
        "slotIdToNode",
        "value",
        "getSlotReusePolicy",
        "()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "setSlotReusePolicy",
        "(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V",
        "createMeasurePolicy",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "createNodeAt",
        "index",
        "disposeCurrentNodes",
        "",
        "disposeOrReuseStartingFromIndex",
        "startIndex",
        "forceRecomposeChildren",
        "getSlotIdAtIndex",
        "ignoreRemeasureRequests",
        "Lkotlin/Function0;",
        "makeSureStateIsConsistent",
        "move",
        "from",
        "to",
        "count",
        "precompose",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "slotId",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "subcompose",
        "node",
        "nodeState",
        "(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;",
        "subcomposeInto",
        "Landroidx/compose/runtime/Composition;",
        "existing",
        "container",
        "parent",
        "composable",
        "(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;",
        "takeNodeFromReusables",
        "NodeState",
        "Scope",
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


# instance fields
.field private final NoIntrinsicsMessage:Ljava/lang/String;

.field private compositionContext:Landroidx/compose/runtime/CompositionContext;

.field private currentIndex:I

.field private final nodeToNodeState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
            ">;"
        }
    .end annotation
.end field

.field private final precomposeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private precomposedCount:I

.field private reusableCount:I

.field private final reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

.field private final root:Landroidx/compose/ui/node/LayoutNode;

.field private final scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field private final slotIdToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slotReusePolicy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 372
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 374
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 375
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 376
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 377
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->NoIntrinsicsMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 356
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    return p0
.end method

.method public static final synthetic access$getPrecomposeMap$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/Map;
    .locals 0

    .line 356
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getPrecomposedCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 356
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    return p0
.end method

.method public static final synthetic access$getReusableCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 356
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    return p0
.end method

.method public static final synthetic access$getRoot$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 356
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    .locals 0

    .line 356
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    return-object p0
.end method

.method public static final synthetic access$move(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;III)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentIndex$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 356
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    return-void
.end method

.method public static final synthetic access$setPrecomposedCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 356
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    return-void
.end method

.method public static final synthetic access$setReusableCount$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 356
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    return-void
.end method

.method private final createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;
    .locals 5

    .line 687
    new-instance v0, Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 811
    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 689
    invoke-virtual {v2, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 813
    invoke-static {v1, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-object v0
.end method

.method private final getSlotIdAtIndex(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 473
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 474
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final ignoreRemeasureRequests(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    .line 820
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 821
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 822
    invoke-static {v0, p1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method private final move(III)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    .line 816
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 695
    invoke-virtual {v1, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    const/4 p1, 0x0

    .line 818
    invoke-static {v0, p1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    return-void
.end method

.method static synthetic move$default(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 693
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    return-void
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V
    .locals 8

    .line 438
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 783
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 786
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v3, 0x1

    .line 790
    invoke-static {v2, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 440
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 442
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    if-eqz v6, :cond_0

    .line 448
    new-instance v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$2$1$1;

    invoke-direct {v7, p2, v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$2$1$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x2132aea

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 441
    invoke-direct {p0, v5, p1, v6, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcomposeInto(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setComposition(Landroidx/compose/runtime/Composition;)V

    const/4 p1, 0x0

    .line 792
    invoke-static {v2, p1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 453
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 795
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    return-void

    .line 444
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parent composition reference not set"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 794
    :try_start_4
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 795
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p1
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 775
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    sget-object v2, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->getLambda-1$ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 778
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 429
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composition;->getHasInvalidations()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 430
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-ne v0, p3, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getForceRecompose()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 431
    :cond_2
    invoke-virtual {v1, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 432
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V

    const/4 p1, 0x0

    .line 433
    invoke-virtual {v1, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    :cond_3
    return-void
.end method

.method private final subcomposeInto(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composition;",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/Composition;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 462
    invoke-interface {p1}, Landroidx/compose/runtime/Composition;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/platform/Wrapper_androidKt;->createSubcomposition(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    move-result-object p1

    .line 468
    :cond_1
    invoke-interface {p1, p4}, Landroidx/compose/runtime/Composition;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method private final takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 9

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 534
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    if-lt v4, v2, :cond_2

    .line 540
    invoke-direct {p0, v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->getSlotIdAtIndex(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_1
    if-ne v6, v5, :cond_5

    :goto_2
    if-lt v0, v2, :cond_4

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 552
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 553
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 554
    invoke-virtual {v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 555
    invoke-virtual {v4, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setSlotId(Ljava/lang/Object;)V

    move v4, v0

    move v6, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v4, v0

    :cond_5
    :goto_3
    if-ne v6, v5, :cond_6

    .line 564
    move-object p1, v1

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    goto :goto_4

    :cond_6
    if-eq v4, v2, :cond_7

    .line 568
    invoke-direct {p0, v4, v2, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    :cond_7
    iget p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 571
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 572
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 573
    invoke-virtual {p1, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActive(Z)V

    .line 574
    invoke-virtual {p1, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    .line 575
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final createMeasurePolicy(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasurePolicy;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->NoIntrinsicsMessage:Ljava/lang/String;

    .line 582
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;

    invoke-direct {v1, p0, p1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v1
.end method

.method public final disposeCurrentNodes()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    .line 824
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 704
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 826
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 705
    invoke-virtual {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/runtime/Composition;->dispose()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 707
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->removeAll$ui_release()V

    const/4 v1, 0x0

    .line 828
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 709
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 710
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 713
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 714
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final disposeOrReuseStartingFromIndex(I)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 479
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_3

    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 482
    invoke-virtual {v3}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->clear()V

    if-gt p1, v1, :cond_0

    move v3, p1

    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 484
    invoke-direct {p0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->getSlotIdAtIndex(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->add$ui_release(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 487
    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->getSlotsToRetain(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V

    :goto_1
    if-lt v1, p1, :cond_3

    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 491
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 492
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 493
    invoke-virtual {v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableSlotIdsSet:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 494
    invoke-virtual {v6, v5}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v3, v6}, Landroidx/compose/ui/node/LayoutNode;->setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 497
    invoke-virtual {v4, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setActive(Z)V

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 797
    invoke-static {v6, v2}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 500
    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/compose/runtime/Composition;->dispose()V

    :cond_2
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 502
    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    .line 799
    invoke-static {v6, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 506
    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 511
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    return-void
.end method

.method public final forceRecomposeChildren()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 808
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 679
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 680
    invoke-virtual {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->setForceRecompose(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 682
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 683
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final getCompositionContext()Landroidx/compose/runtime/CompositionContext;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-object v0
.end method

.method public final getSlotReusePolicy()Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    return-object v0
.end method

.method public final makeSureStateIsConsistent()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 515
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 520
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 524
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incorrect state. Precomposed children "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Map size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 526
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incorrect state. Total children "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Reusable children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Precomposed children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistency between the count of nodes tracked by the state ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Ljava/util/Map;

    .line 517
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 517
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    .line 518
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 622
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 801
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 624
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 627
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 628
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move(III)V

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 632
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    .line 804
    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_1
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 637
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 639
    :cond_2
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precompose$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-object p2
.end method

.method public final setCompositionContext(Landroidx/compose/runtime/CompositionContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-void
.end method

.method public final setSlotReusePolicy(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotReusePolicy:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposeOrReuseStartingFromIndex(I)V

    :cond_0
    return-void
.end method

.method public final subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->makeSureStateIsConsistent()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 393
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    .line 394
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "subcompose can only be used inside the measure or layout blocks"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->slotIdToNode:Ljava/util/Map;

    .line 768
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposeMap:Ljava/util/Map;

    .line 399
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_3

    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposedCount:I

    goto :goto_1

    .line 401
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 405
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    invoke-direct {p0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 771
    :cond_4
    :goto_1
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_5
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 409
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    if-lt v3, v4, :cond_7

    if-eq v4, v3, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 417
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->move$default(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    .line 421
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 422
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildMeasurables$ui_release()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 411
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
