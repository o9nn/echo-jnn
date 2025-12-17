.class public final enum Lapp/rive/runtime/kotlin/core/Fit;
.super Ljava/lang/Enum;
.source "Fit.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/Fit$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "",
        "(Ljava/lang/String;I)V",
        "FILL",
        "CONTAIN",
        "COVER",
        "FIT_WIDTH",
        "FIT_HEIGHT",
        "NONE",
        "SCALE_DOWN",
        "LAYOUT",
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

.field private static final synthetic $VALUES:[Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum CONTAIN:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum COVER:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final Companion:Lapp/rive/runtime/kotlin/core/Fit$Companion;

.field public static final enum FILL:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum FIT_HEIGHT:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum FIT_WIDTH:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum LAYOUT:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum NONE:Lapp/rive/runtime/kotlin/core/Fit;

.field public static final enum SCALE_DOWN:Lapp/rive/runtime/kotlin/core/Fit;


# direct methods
.method private static final synthetic $values()[Lapp/rive/runtime/kotlin/core/Fit;
    .locals 8

    sget-object v0, Lapp/rive/runtime/kotlin/core/Fit;->FILL:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v1, Lapp/rive/runtime/kotlin/core/Fit;->CONTAIN:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v2, Lapp/rive/runtime/kotlin/core/Fit;->COVER:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v3, Lapp/rive/runtime/kotlin/core/Fit;->FIT_WIDTH:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v4, Lapp/rive/runtime/kotlin/core/Fit;->FIT_HEIGHT:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v5, Lapp/rive/runtime/kotlin/core/Fit;->NONE:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v6, Lapp/rive/runtime/kotlin/core/Fit;->SCALE_DOWN:Lapp/rive/runtime/kotlin/core/Fit;

    sget-object v7, Lapp/rive/runtime/kotlin/core/Fit;->LAYOUT:Lapp/rive/runtime/kotlin/core/Fit;

    filled-new-array/range {v0 .. v7}, [Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->FILL:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "CONTAIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->CONTAIN:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "COVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->COVER:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "FIT_WIDTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->FIT_WIDTH:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "FIT_HEIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->FIT_HEIGHT:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->NONE:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "SCALE_DOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->SCALE_DOWN:Lapp/rive/runtime/kotlin/core/Fit;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit;

    const-string v1, "LAYOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/Fit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->LAYOUT:Lapp/rive/runtime/kotlin/core/Fit;

    invoke-static {}, Lapp/rive/runtime/kotlin/core/Fit;->$values()[Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->$VALUES:[Lapp/rive/runtime/kotlin/core/Fit;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lapp/rive/runtime/kotlin/core/Fit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/Fit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Fit;->Companion:Lapp/rive/runtime/kotlin/core/Fit$Companion;

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
            "Lapp/rive/runtime/kotlin/core/Fit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lapp/rive/runtime/kotlin/core/Fit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    const-class v0, Lapp/rive/runtime/kotlin/core/Fit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/rive/runtime/kotlin/core/Fit;

    return-object p0
.end method

.method public static values()[Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/Fit;->$VALUES:[Lapp/rive/runtime/kotlin/core/Fit;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/rive/runtime/kotlin/core/Fit;

    return-object v0
.end method
