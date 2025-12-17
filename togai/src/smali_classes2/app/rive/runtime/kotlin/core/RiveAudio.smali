.class public final Lapp/rive/runtime/kotlin/core/RiveAudio;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "FileAsset.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/RiveAudio$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0096 \u00a8\u0006\t"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RiveAudio;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "address",
        "",
        "(J)V",
        "cppDelete",
        "",
        "pointer",
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
.field public static final Companion:Lapp/rive/runtime/kotlin/core/RiveAudio$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveAudio$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/RiveAudio$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/RiveAudio;->Companion:Lapp/rive/runtime/kotlin/core/RiveAudio$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    return-void
.end method


# virtual methods
.method public native cppDelete(J)V
.end method
