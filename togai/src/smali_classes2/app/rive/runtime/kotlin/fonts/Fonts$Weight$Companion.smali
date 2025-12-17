.class public final Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;",
        "",
        "()V",
        "BOLD",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "getBOLD",
        "()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "NORMAL",
        "getNORMAL",
        "fromInt",
        "intValue",
        "",
        "fromString",
        "stringValue",
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromInt$default(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;IILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x190

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;->fromInt(I)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromInt(I)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 4

    .line 60
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    .line 61
    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Lkotlin/ranges/ClosedRange;

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result p1

    .line 60
    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(I)V

    return-object v0
.end method

.method public final fromString(Ljava/lang/String;)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 4

    .line 56
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    if-eqz p1, :cond_0

    .line 57
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Lkotlin/ranges/ClosedRange;

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x190

    .line 56
    :goto_0
    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(I)V

    return-object v0
.end method

.method public final getBOLD()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    .line 65
    invoke-static {}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->access$getBOLD$cp()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v0

    return-object v0
.end method

.method public final getNORMAL()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    .line 64
    invoke-static {}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->access$getNORMAL$cp()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v0

    return-object v0
.end method
