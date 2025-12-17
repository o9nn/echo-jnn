.class public final Lapp/rive/runtime/kotlin/fonts/FontHelper;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/FontHelper;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "FontHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/FontHelper;->Companion:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
