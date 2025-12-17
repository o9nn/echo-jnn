.class final Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaLibraryModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/medialibrary/MediaLibraryModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaLibraryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1\n+ 2 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n1#1,505:1\n328#2,9:506\n*S KotlinDebug\n*F\n+ 1 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1\n*L\n140#1:506,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic $assetsId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic this$0:Lexpo/modules/medialibrary/MediaLibraryModule;


# direct methods
.method constructor <init>(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/kotlin/Promise;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/medialibrary/MediaLibraryModule;",
            "Lexpo/modules/kotlin/Promise;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    iput-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p3, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->$assetsId:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    iget-object v3, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    iget-object v5, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v4, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1;->$assetsId:Ljava/util/List;

    .line 506
    invoke-static {v3}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getModuleCoroutineScope$p(Lexpo/modules/medialibrary/MediaLibraryModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1$invoke$$inlined$withModuleScope$1;

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, v5

    invoke-direct/range {v0 .. v5}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$8$1$action$1$invoke$$inlined$withModuleScope$1;-><init>(Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/util/List;Lexpo/modules/kotlin/Promise;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
