.class final Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;
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
.field final synthetic $albumDir:Ljava/io/File;

.field final synthetic $assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic this$0:Lexpo/modules/medialibrary/MediaLibraryModule;


# direct methods
.method constructor <init>(Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/util/List;Ljava/io/File;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/medialibrary/MediaLibraryModule;",
            "Ljava/util/List<",
            "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
            ">;",
            "Ljava/io/File;",
            "Lexpo/modules/kotlin/Promise;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    iput-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->$assets:Ljava/util/List;

    iput-object p3, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->$albumDir:Ljava/io/File;

    iput-object p4, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 243
    invoke-static {v0}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getModuleCoroutineScope$p(Lexpo/modules/medialibrary/MediaLibraryModule;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1$1;

    iget-object v5, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    iget-object v6, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->$assets:Ljava/util/List;

    iget-object v7, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->$albumDir:Ljava/io/File;

    iget-object v8, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1$1;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/util/List;Ljava/io/File;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
