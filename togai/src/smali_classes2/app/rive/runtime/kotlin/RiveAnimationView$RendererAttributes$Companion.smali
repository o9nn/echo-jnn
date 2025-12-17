.class public final Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes$Companion;
.super Ljava/lang/Object;
.source "RiveAnimationView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRiveAnimationView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RiveAnimationView.kt\napp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1144:1\n1#2:1145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes$Companion;",
        "",
        "()V",
        "assetLoaderFrom",
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "name",
        "",
        "context",
        "Landroid/content/Context;",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final assetLoaderFrom(Ljava/lang/String;Landroid/content/Context;)Lapp/rive/runtime/kotlin/core/FileAssetLoader;
    .locals 7

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 200
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "forName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lkotlin/reflect/KFunction;

    .line 202
    invoke-interface {v5}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-interface {v5}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/KParameter;

    invoke-interface {v5}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v5

    const-class v6, Landroid/content/Context;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 201
    :goto_0
    check-cast v3, Lkotlin/reflect/KFunction;

    const/4 v2, 0x0

    if-eqz v3, :cond_3

    new-array v4, v4, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-interface {v3, v4}, Lkotlin/reflect/KFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_4

    .line 205
    check-cast p2, Lapp/rive/runtime/kotlin/core/ContextAssetLoader;

    check-cast p2, Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    return-object p2

    .line 208
    :cond_4
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/KFunction;

    invoke-interface {v3}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    check-cast v0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_7

    new-array p2, v2, [Ljava/lang/Object;

    .line 210
    invoke-interface {v0, p2}, Lkotlin/reflect/KFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_3

    :cond_7
    move-object p2, v1

    :goto_3
    check-cast p2, Lapp/rive/runtime/kotlin/core/FileAssetLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize AssetLoader from name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RiveAnimationView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-object v1
.end method
