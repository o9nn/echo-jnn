.class public final enum Lapp/rive/runtime/kotlin/core/Alignment;
.super Ljava/lang/Enum;
.source "Alignment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/Alignment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "",
        "(Ljava/lang/String;I)V",
        "TOP_LEFT",
        "TOP_CENTER",
        "TOP_RIGHT",
        "CENTER_LEFT",
        "CENTER",
        "CENTER_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_CENTER",
        "BOTTOM_RIGHT",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum BOTTOM_CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum BOTTOM_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum BOTTOM_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum CENTER_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum CENTER_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final Companion:Lapp/rive/runtime/kotlin/core/Alignment$Companion;

.field public static final enum TOP_CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum TOP_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

.field public static final enum TOP_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;


# direct methods
.method private static final synthetic $values()[Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 9

    sget-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->TOP_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v1, Lapp/rive/runtime/kotlin/core/Alignment;->TOP_CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v2, Lapp/rive/runtime/kotlin/core/Alignment;->TOP_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v3, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v4, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v5, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v6, Lapp/rive/runtime/kotlin/core/Alignment;->BOTTOM_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v7, Lapp/rive/runtime/kotlin/core/Alignment;->BOTTOM_CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    sget-object v8, Lapp/rive/runtime/kotlin/core/Alignment;->BOTTOM_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

    filled-new-array/range {v0 .. v8}, [Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->TOP_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->TOP_CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->TOP_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

    .line 5
    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "CENTER_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "CENTER_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->CENTER_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

    .line 6
    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->BOTTOM_LEFT:Lapp/rive/runtime/kotlin/core/Alignment;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->BOTTOM_CENTER:Lapp/rive/runtime/kotlin/core/Alignment;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment;

    const-string v1, "BOTTOM_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->BOTTOM_RIGHT:Lapp/rive/runtime/kotlin/core/Alignment;

    invoke-static {}, Lapp/rive/runtime/kotlin/core/Alignment;->$values()[Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->$VALUES:[Lapp/rive/runtime/kotlin/core/Alignment;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Alignment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/Alignment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->Companion:Lapp/rive/runtime/kotlin/core/Alignment$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lapp/rive/runtime/kotlin/core/Alignment;",
            ">;"
        }
    .end annotation

    sget-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 1

    const-class v0, Lapp/rive/runtime/kotlin/core/Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/rive/runtime/kotlin/core/Alignment;

    return-object p0
.end method

.method public static values()[Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/Alignment;->$VALUES:[Lapp/rive/runtime/kotlin/core/Alignment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/rive/runtime/kotlin/core/Alignment;

    return-object v0
.end method
