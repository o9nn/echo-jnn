.class public final Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/clipboard/ClipboardModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n1#1,505:1\n41#2,5:506\n*E\n"
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
        "<anonymous parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5"
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
.field final synthetic this$0:Lexpo/modules/clipboard/ClipboardModule;


# direct methods
.method public constructor <init>(Lexpo/modules/clipboard/ClipboardModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    check-cast p2, Lexpo/modules/clipboard/GetStringOptions;

    iget-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    .line 506
    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-static {p1, v0}, Lexpo/modules/clipboard/ClipboardModule;->access$getFirstItem(Lexpo/modules/clipboard/ClipboardModule;Landroid/content/ClipboardManager;)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 507
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetStringOptions;->getPreferredFormat()Lexpo/modules/clipboard/StringFormat;

    move-result-object p2

    sget-object v0, Lexpo/modules/clipboard/ClipboardModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lexpo/modules/clipboard/StringFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object p2, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    .line 509
    invoke-static {p2}, Lexpo/modules/clipboard/ClipboardModule;->access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipData$Item;->coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    .line 508
    invoke-static {p2}, Lexpo/modules/clipboard/ClipboardModule;->access$getContext(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$coerceToPlainText(Landroid/content/ClipData$Item;Landroid/content/Context;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
