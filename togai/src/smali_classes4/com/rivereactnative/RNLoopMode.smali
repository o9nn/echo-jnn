.class public final enum Lcom/rivereactnative/RNLoopMode;
.super Ljava/lang/Enum;
.source "RNLoopMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNLoopMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rivereactnative/RNLoopMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rivereactnative/RNLoopMode;",
        "",
        "mValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "OneShot",
        "Loop",
        "PingPong",
        "Auto",
        "Companion",
        "rive-react-native_release"
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

.field private static final synthetic $VALUES:[Lcom/rivereactnative/RNLoopMode;

.field public static final enum Auto:Lcom/rivereactnative/RNLoopMode;

.field public static final Companion:Lcom/rivereactnative/RNLoopMode$Companion;

.field public static final enum Loop:Lcom/rivereactnative/RNLoopMode;

.field public static final enum OneShot:Lcom/rivereactnative/RNLoopMode;

.field public static final enum PingPong:Lcom/rivereactnative/RNLoopMode;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/rivereactnative/RNLoopMode;
    .locals 4

    sget-object v0, Lcom/rivereactnative/RNLoopMode;->OneShot:Lcom/rivereactnative/RNLoopMode;

    sget-object v1, Lcom/rivereactnative/RNLoopMode;->Loop:Lcom/rivereactnative/RNLoopMode;

    sget-object v2, Lcom/rivereactnative/RNLoopMode;->PingPong:Lcom/rivereactnative/RNLoopMode;

    sget-object v3, Lcom/rivereactnative/RNLoopMode;->Auto:Lcom/rivereactnative/RNLoopMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/rivereactnative/RNLoopMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/rivereactnative/RNLoopMode;

    const/4 v1, 0x0

    const-string v2, "oneShot"

    const-string v3, "OneShot"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNLoopMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->OneShot:Lcom/rivereactnative/RNLoopMode;

    .line 7
    new-instance v0, Lcom/rivereactnative/RNLoopMode;

    const/4 v1, 0x1

    const-string v2, "loop"

    const-string v3, "Loop"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNLoopMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->Loop:Lcom/rivereactnative/RNLoopMode;

    .line 8
    new-instance v0, Lcom/rivereactnative/RNLoopMode;

    const/4 v1, 0x2

    const-string v2, "pingPong"

    const-string v3, "PingPong"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNLoopMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->PingPong:Lcom/rivereactnative/RNLoopMode;

    .line 9
    new-instance v0, Lcom/rivereactnative/RNLoopMode;

    const/4 v1, 0x3

    const-string v2, "auto"

    const-string v3, "Auto"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNLoopMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->Auto:Lcom/rivereactnative/RNLoopMode;

    invoke-static {}, Lcom/rivereactnative/RNLoopMode;->$values()[Lcom/rivereactnative/RNLoopMode;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->$VALUES:[Lcom/rivereactnative/RNLoopMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/rivereactnative/RNLoopMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rivereactnative/RNLoopMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rivereactnative/RNLoopMode;->Companion:Lcom/rivereactnative/RNLoopMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/rivereactnative/RNLoopMode;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rivereactnative/RNLoopMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rivereactnative/RNLoopMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rivereactnative/RNLoopMode;
    .locals 1

    const-class v0, Lcom/rivereactnative/RNLoopMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rivereactnative/RNLoopMode;

    return-object p0
.end method

.method public static values()[Lcom/rivereactnative/RNLoopMode;
    .locals 1

    sget-object v0, Lcom/rivereactnative/RNLoopMode;->$VALUES:[Lcom/rivereactnative/RNLoopMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rivereactnative/RNLoopMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RNLoopMode;->mValue:Ljava/lang/String;

    return-object v0
.end method
