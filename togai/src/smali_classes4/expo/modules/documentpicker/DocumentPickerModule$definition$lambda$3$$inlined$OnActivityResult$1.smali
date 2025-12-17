.class public final Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

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
        "Landroid/app/Activity;",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder$OnActivityResult$1\n+ 2 DocumentPickerModule.kt\nexpo/modules/documentpicker/DocumentPickerModule\n*L\n1#1,143:1\n51#2,25:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "sender",
        "Landroid/app/Activity;",
        "payload",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "invoke",
        "expo/modules/kotlin/modules/ModuleDefinitionBuilder$OnActivityResult$1"
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

    iput-object p1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Landroid/app/Activity;

    check-cast p2, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V
    .locals 3

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component1()I

    move-result p1

    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component2()I

    move-result v0

    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component3()Landroid/content/Intent;

    move-result-object p2

    const/16 v1, 0x1029

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 145
    invoke-static {p1}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$getPendingPromise$p(Lexpo/modules/documentpicker/DocumentPickerModule;)Lexpo/modules/kotlin/Promise;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 149
    invoke-static {p1}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$getPendingPromise$p(Lexpo/modules/documentpicker/DocumentPickerModule;)Lexpo/modules/kotlin/Promise;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_1

    .line 153
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 154
    invoke-static {v0, p2}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$handleMultipleSelection(Lexpo/modules/documentpicker/DocumentPickerModule;Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 156
    invoke-static {v0, p2}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$handleSingleSelection(Lexpo/modules/documentpicker/DocumentPickerModule;Landroid/content/Intent;)V
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 159
    :goto_1
    invoke-interface {p1, p2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_2

    .line 163
    :cond_3
    new-instance p2, Lexpo/modules/documentpicker/DocumentPickerResult;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p2, v0, v2, v1, v2}, Lexpo/modules/documentpicker/DocumentPickerResult;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    invoke-interface {p1, p2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lexpo/modules/documentpicker/DocumentPickerModule$definition$lambda$3$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/documentpicker/DocumentPickerModule;

    .line 167
    invoke-static {p1, v2}, Lexpo/modules/documentpicker/DocumentPickerModule;->access$setPendingPromise$p(Lexpo/modules/documentpicker/DocumentPickerModule;Lexpo/modules/kotlin/Promise;)V

    :cond_4
    :goto_3
    return-void
.end method
