.class public abstract Lapp/rive/runtime/kotlin/ResourceType;
.super Ljava/lang/Object;
.source "RiveAnimationView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/ResourceType$Companion;,
        Lapp/rive/runtime/kotlin/ResourceType$ResourceBytes;,
        Lapp/rive/runtime/kotlin/ResourceType$ResourceId;,
        Lapp/rive/runtime/kotlin/ResourceType$ResourceRiveFile;,
        Lapp/rive/runtime/kotlin/ResourceType$ResourceUrl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00032\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/ResourceType;",
        "",
        "()V",
        "Companion",
        "ResourceBytes",
        "ResourceId",
        "ResourceRiveFile",
        "ResourceUrl",
        "Lapp/rive/runtime/kotlin/ResourceType$ResourceBytes;",
        "Lapp/rive/runtime/kotlin/ResourceType$ResourceId;",
        "Lapp/rive/runtime/kotlin/ResourceType$ResourceRiveFile;",
        "Lapp/rive/runtime/kotlin/ResourceType$ResourceUrl;",
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


# static fields
.field public static final Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/ResourceType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/ResourceType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/ResourceType;->Companion:Lapp/rive/runtime/kotlin/ResourceType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/ResourceType;-><init>()V

    return-void
.end method
