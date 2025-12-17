.class public final Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ClipboardModule.kt\nexpo/modules/clipboard/ClipboardModule\n*L\n1#1,505:1\n15#2,4:506\n49#3,10:510\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n233#1:506,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
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

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 232
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 232
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 234
    check-cast p1, Lexpo/modules/clipboard/SetStringOptions;

    check-cast v0, Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Lexpo/modules/clipboard/SetStringOptions;->getInputFormat()Lexpo/modules/clipboard/StringFormat;

    move-result-object p1

    sget-object v2, Lexpo/modules/clipboard/ClipboardModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/clipboard/StringFormat;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 514
    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModuleKt;->access$plainTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v2, p1, v0}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 511
    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$definition$lambda$12$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/clipboard/ClipboardModule;

    .line 518
    invoke-static {v0}, Lexpo/modules/clipboard/ClipboardModule;->access$getClipboardManager(Lexpo/modules/clipboard/ClipboardModule;)Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 519
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
