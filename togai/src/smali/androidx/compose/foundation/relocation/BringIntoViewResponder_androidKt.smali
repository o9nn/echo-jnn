.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;
.super Ljava/lang/Object;
.source "BringIntoViewResponder.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewResponder.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewResponder.android.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,48:1\n76#2:49\n36#3:50\n1057#4,6:51\n*S KotlinDebug\n*F\n+ 1 BringIntoViewResponder.android.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt\n*L\n30#1:49\n31#1:50\n31#1:51,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0001\u00a2\u0006\u0002\u0010\u0002\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "rememberDefaultBringIntoViewParent",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/relocation/BringIntoViewParent;",
        "toRect",
        "Landroid/graphics/Rect;",
        "Landroidx/compose/ui/geometry/Rect;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;->toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberDefaultBringIntoViewParent(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/relocation/BringIntoViewParent;
    .locals 3

    const v0, -0x3d7a14e4

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDefaultBringIntoViewParent)29@1124L7,30@1143L51:BringIntoViewResponder.android.kt#exjx5q"

    invoke-static {p0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.relocation.rememberDefaultBringIntoViewParent (BringIntoViewResponder.android.kt:28)"

    .line 29
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "C:CompositionLocal.kt#9igjgp"

    .line 49
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 30
    check-cast p1, Landroid/view/View;

    const v0, 0x44faf204

    .line 31
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 50
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 31
    :cond_1
    new-instance v1, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;-><init>(Landroid/view/View;)V

    .line 54
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 50
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 31
    check-cast v1, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewParent;

    return-object v1
.end method

.method private static final toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
