.class public final Lapp/rive/runtime/kotlin/core/RiveEventReport;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "RiveEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/RiveEventReport$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RiveEventReport;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "unsafeCppPointer",
        "",
        "secondsDelay",
        "",
        "(JF)V",
        "event",
        "Lapp/rive/runtime/kotlin/core/RiveEvent;",
        "getEvent",
        "()Lapp/rive/runtime/kotlin/core/RiveEvent;",
        "getUnsafeCppPointer",
        "()J",
        "convertEvent",
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
.field private final event:Lapp/rive/runtime/kotlin/core/RiveEvent;

.field private final unsafeCppPointer:J


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    iput-wide p1, p0, Lapp/rive/runtime/kotlin/core/RiveEventReport;->unsafeCppPointer:J

    .line 10
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveEvent;

    invoke-direct {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/core/RiveEvent;-><init>(JF)V

    invoke-direct {p0, v0}, Lapp/rive/runtime/kotlin/core/RiveEventReport;->convertEvent(Lapp/rive/runtime/kotlin/core/RiveEvent;)Lapp/rive/runtime/kotlin/core/RiveEvent;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/RiveEventReport;->event:Lapp/rive/runtime/kotlin/core/RiveEvent;

    return-void
.end method

.method private final convertEvent(Lapp/rive/runtime/kotlin/core/RiveEvent;)Lapp/rive/runtime/kotlin/core/RiveEvent;
    .locals 3

    .line 12
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getType()Lapp/rive/runtime/kotlin/core/EventType;

    move-result-object v0

    sget-object v1, Lapp/rive/runtime/kotlin/core/RiveEventReport$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/EventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 14
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveGeneralEvent;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getCppPointer()J

    move-result-wide v1

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getDelay()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lapp/rive/runtime/kotlin/core/RiveGeneralEvent;-><init>(JF)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/RiveEvent;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 13
    :cond_1
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveOpenURLEvent;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getCppPointer()J

    move-result-wide v1

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveEvent;->getDelay()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lapp/rive/runtime/kotlin/core/RiveOpenURLEvent;-><init>(JF)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/RiveEvent;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getEvent()Lapp/rive/runtime/kotlin/core/RiveEvent;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/RiveEventReport;->event:Lapp/rive/runtime/kotlin/core/RiveEvent;

    return-object v0
.end method

.method public final getUnsafeCppPointer()J
    .locals 2

    iget-wide v0, p0, Lapp/rive/runtime/kotlin/core/RiveEventReport;->unsafeCppPointer:J

    return-wide v0
.end method
