.class final Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Helpers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/rive/runtime/kotlin/core/Helpers;->getCurrentStackTrace(Z)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/StackTraceElement;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/lang/StackTraceElement;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/StackTraceElement;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;

    invoke-direct {v0}, Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;-><init>()V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;->INSTANCE:Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/StackTraceElement;)Ljava/lang/Boolean;
    .locals 1

    .line 48
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lapp/rive/runtime/kotlin/core/Helpers;->INSTANCE:Lapp/rive/runtime/kotlin/core/Helpers;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/core/Helpers$getCurrentStackTrace$2;->invoke(Ljava/lang/StackTraceElement;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
