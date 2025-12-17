.class public final Lapp/rive/runtime/kotlin/core/RiveFont$Companion;
.super Ljava/lang/Object;
.source "FileAsset.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/core/RiveFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RiveFont$Companion;",
        "",
        "()V",
        "cppMakeFont",
        "",
        "bytes",
        "",
        "rendererTypeIdx",
        "",
        "make",
        "Lapp/rive/runtime/kotlin/core/RiveFont;",
        "rendererType",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/RiveFont$Companion;-><init>()V

    return-void
.end method

.method private final native cppMakeFont([BI)J
.end method

.method public static synthetic make$default(Lapp/rive/runtime/kotlin/core/RiveFont$Companion;[BLapp/rive/runtime/kotlin/core/RendererType;ILjava/lang/Object;)Lapp/rive/runtime/kotlin/core/RiveFont;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 146
    sget-object p2, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/core/Rive;->getDefaultRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p2

    .line 144
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/RiveFont$Companion;->make([BLapp/rive/runtime/kotlin/core/RendererType;)Lapp/rive/runtime/kotlin/core/RiveFont;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final make([BLapp/rive/runtime/kotlin/core/RendererType;)Lapp/rive/runtime/kotlin/core/RiveFont;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rendererType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/core/RendererType;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/RiveFont$Companion;->cppMakeFont([BI)J

    move-result-wide p1

    .line 149
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveFont;

    invoke-direct {v0, p1, p2}, Lapp/rive/runtime/kotlin/core/RiveFont;-><init>(J)V

    return-object v0
.end method
