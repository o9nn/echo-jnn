.class public final Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/documentpicker/DocumentPickerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 DocumentPickerModule.kt\nexpo/modules/documentpicker/DocumentPickerModule\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,505:1\n8#2,4:506\n33#3,10:510\n43#3,7:522\n37#4,2:520\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 DocumentPickerModule.kt\nexpo/modules/documentpicker/DocumentPickerModule\n*L\n246#1:506,4\n42#2:520,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/documentpicker/DocumentPickerModule;


# direct methods
.method public constructor <init>(Lexpo/modules/documentpicker/DocumentPickerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 3

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    aget-object p1, p1, v0

    .line 247
    check-cast p1, Lexpo/modules/documentpicker/DocumentPickerOptions;

    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 510
    invoke-static {v1}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$getPendingPromise$p(Lexpo/modules/documentpicker/DocumentPickerModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 513
    invoke-static {v1, p2}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$setPendingPromise$p(Lexpo/modules/documentpicker/DocumentPickerModule;Lexpo/modules/kotlin/Promise;)V

    iget-object p2, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 514
    invoke-virtual {p1}, Lexpo/modules/documentpicker/DocumentPickerOptions;->getCopyToCacheDirectory()Z

    move-result v1

    invoke-static {p2, v1}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$setCopyToCacheDirectory$p(Lexpo/modules/documentpicker/DocumentPickerModule;Z)V

    .line 515
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 516
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 517
    invoke-virtual {p1}, Lexpo/modules/documentpicker/DocumentPickerOptions;->getMultiple()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    invoke-virtual {p1}, Lexpo/modules/documentpicker/DocumentPickerOptions;->getType()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 519
    invoke-virtual {p1}, Lexpo/modules/documentpicker/DocumentPickerOptions;->getType()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array v0, v0, [Ljava/lang/String;

    .line 521
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v0, "android.intent.extra.MIME_TYPES"

    .line 519
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "*/*"

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/documentpicker/DocumentPickerOptions;->getType()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 518
    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 527
    invoke-static {p1}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$getCurrentActivity(Lexpo/modules/documentpicker/DocumentPickerModule;)Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0x1029

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 511
    :cond_1
    new-instance p1, Lexpo/modules/documentpicker/PickingInProgressException;

    invoke-direct {p1}, Lexpo/modules/documentpicker/PickingInProgressException;-><init>()V

    throw p1
.end method
