.class public final enum Lapp/rive/runtime/kotlin/renderers/PointerEvents;
.super Ljava/lang/Enum;
.source "RiveArtboardRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/rive/runtime/kotlin/renderers/PointerEvents;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/renderers/PointerEvents;",
        "",
        "(Ljava/lang/String;I)V",
        "POINTER_DOWN",
        "POINTER_UP",
        "POINTER_MOVE",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lapp/rive/runtime/kotlin/renderers/PointerEvents;

.field public static final enum POINTER_DOWN:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

.field public static final enum POINTER_MOVE:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

.field public static final enum POINTER_UP:Lapp/rive/runtime/kotlin/renderers/PointerEvents;


# direct methods
.method private static final synthetic $values()[Lapp/rive/runtime/kotlin/renderers/PointerEvents;
    .locals 3

    sget-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_DOWN:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    sget-object v1, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_UP:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    sget-object v2, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_MOVE:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    filled-new-array {v0, v1, v2}, [Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    const-string v1, "POINTER_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/renderers/PointerEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_DOWN:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    new-instance v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    const-string v1, "POINTER_UP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/renderers/PointerEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_UP:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    new-instance v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    const-string v1, "POINTER_MOVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/renderers/PointerEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->POINTER_MOVE:Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-static {}, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->$values()[Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->$VALUES:[Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lapp/rive/runtime/kotlin/renderers/PointerEvents;",
            ">;"
        }
    .end annotation

    sget-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/rive/runtime/kotlin/renderers/PointerEvents;
    .locals 1

    const-class v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    return-object p0
.end method

.method public static values()[Lapp/rive/runtime/kotlin/renderers/PointerEvents;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/renderers/PointerEvents;->$VALUES:[Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/rive/runtime/kotlin/renderers/PointerEvents;

    return-object v0
.end method
