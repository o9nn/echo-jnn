.class public final Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 Clickable.kt\nandroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,484:1\n417#2,6:485\n423#2,2:492\n425#2,2:495\n1851#3:491\n1852#3:494\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1\n*L\n422#1:491\n422#1:494\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime_release"
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
.field final synthetic $currentKeyPressInteractions$inlined:Ljava/util/Map;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/Map;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$currentKeyPressInteractions$inlined:Ljava/util/Map;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 485
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 487
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v0, v1}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$pressedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    .line 488
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$currentKeyPressInteractions$inlined:Ljava/util/Map;

    .line 490
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 491
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object v2, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 492
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v3, v1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v2, v3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/ClickableKt$PressedInteractionSourceDisposableEffect$1$invoke$$inlined$onDispose$1;->$currentKeyPressInteractions$inlined:Ljava/util/Map;

    .line 495
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
