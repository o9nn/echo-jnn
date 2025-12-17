.class public final Lapp/rive/runtime/kotlin/core/RendererType$Companion;
.super Ljava/lang/Object;
.source "RendererType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/core/RendererType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RendererType$Companion;",
        "",
        "()V",
        "fromIndex",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "index",
        "",
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/RendererType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIndex(I)Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 4

    .line 11
    invoke-static {}, Lapp/rive/runtime/kotlin/core/RendererType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 17
    invoke-static {}, Lapp/rive/runtime/kotlin/core/RendererType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/rive/runtime/kotlin/core/RendererType;

    return-object p1

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lapp/rive/runtime/kotlin/core/RendererType$Companion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ". It must be between 0 and "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
