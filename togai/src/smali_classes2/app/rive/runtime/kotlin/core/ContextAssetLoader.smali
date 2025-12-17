.class public abstract Lapp/rive/runtime/kotlin/core/ContextAssetLoader;
.super Lapp/rive/runtime/kotlin/core/FileAssetLoader;
.source "FileAssetLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/ContextAssetLoader;",
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
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


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/ContextAssetLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/ContextAssetLoader;->context:Landroid/content/Context;

    return-object v0
.end method
