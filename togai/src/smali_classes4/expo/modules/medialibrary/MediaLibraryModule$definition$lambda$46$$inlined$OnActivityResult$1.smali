.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/medialibrary/MediaLibraryModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder$OnActivityResult$1\n+ 2 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n313#2:144\n314#2,4:146\n1#3:145\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/medialibrary/MediaLibraryModule;


# direct methods
.method public constructor <init>(Lexpo/modules/medialibrary/MediaLibraryModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnActivityResult$1;->invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V
    .locals 3

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 144
    invoke-static {p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getAwaitingAction$p(Lexpo/modules/medialibrary/MediaLibraryModule;)Lexpo/modules/medialibrary/MediaLibraryModule$Action;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->getRequestCode()I

    move-result v0

    const/16 v1, 0x1d27

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->getResultCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$Action;->runWithPermissions(Z)V

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 147
    invoke-static {p1, v2}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$setAwaitingAction$p(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/medialibrary/MediaLibraryModule$Action;)V

    :cond_2
    return-void
.end method
