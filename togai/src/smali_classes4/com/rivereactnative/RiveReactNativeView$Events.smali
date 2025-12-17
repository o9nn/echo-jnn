.class public final enum Lcom/rivereactnative/RiveReactNativeView$Events;
.super Ljava/lang/Enum;
.source "RiveReactNativeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rivereactnative/RiveReactNativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rivereactnative/RiveReactNativeView$Events;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/rivereactnative/RiveReactNativeView$Events;",
        "",
        "mName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "PLAY",
        "PAUSE",
        "STOP",
        "LOOP_END",
        "STATE_CHANGED",
        "RIVE_EVENT",
        "ERROR",
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

.field private static final synthetic $VALUES:[Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum ERROR:Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum LOOP_END:Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum PAUSE:Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum PLAY:Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum RIVE_EVENT:Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum STATE_CHANGED:Lcom/rivereactnative/RiveReactNativeView$Events;

.field public static final enum STOP:Lcom/rivereactnative/RiveReactNativeView$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/rivereactnative/RiveReactNativeView$Events;
    .locals 7

    sget-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->PLAY:Lcom/rivereactnative/RiveReactNativeView$Events;

    sget-object v1, Lcom/rivereactnative/RiveReactNativeView$Events;->PAUSE:Lcom/rivereactnative/RiveReactNativeView$Events;

    sget-object v2, Lcom/rivereactnative/RiveReactNativeView$Events;->STOP:Lcom/rivereactnative/RiveReactNativeView$Events;

    sget-object v3, Lcom/rivereactnative/RiveReactNativeView$Events;->LOOP_END:Lcom/rivereactnative/RiveReactNativeView$Events;

    sget-object v4, Lcom/rivereactnative/RiveReactNativeView$Events;->STATE_CHANGED:Lcom/rivereactnative/RiveReactNativeView$Events;

    sget-object v5, Lcom/rivereactnative/RiveReactNativeView$Events;->RIVE_EVENT:Lcom/rivereactnative/RiveReactNativeView$Events;

    sget-object v6, Lcom/rivereactnative/RiveReactNativeView$Events;->ERROR:Lcom/rivereactnative/RiveReactNativeView$Events;

    filled-new-array/range {v0 .. v6}, [Lcom/rivereactnative/RiveReactNativeView$Events;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 100
    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x0

    const-string v2, "onPlay"

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->PLAY:Lcom/rivereactnative/RiveReactNativeView$Events;

    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x1

    const-string v2, "onPause"

    const-string v3, "PAUSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->PAUSE:Lcom/rivereactnative/RiveReactNativeView$Events;

    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x2

    const-string v2, "onStop"

    const-string v3, "STOP"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->STOP:Lcom/rivereactnative/RiveReactNativeView$Events;

    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x3

    const-string v2, "onLoopEnd"

    const-string v3, "LOOP_END"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->LOOP_END:Lcom/rivereactnative/RiveReactNativeView$Events;

    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x4

    const-string v2, "onStateChanged"

    const-string v3, "STATE_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->STATE_CHANGED:Lcom/rivereactnative/RiveReactNativeView$Events;

    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x5

    const-string v2, "onRiveEventReceived"

    const-string v3, "RIVE_EVENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->RIVE_EVENT:Lcom/rivereactnative/RiveReactNativeView$Events;

    .line 103
    new-instance v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    const/4 v1, 0x6

    const-string v2, "onError"

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RiveReactNativeView$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->ERROR:Lcom/rivereactnative/RiveReactNativeView$Events;

    invoke-static {}, Lcom/rivereactnative/RiveReactNativeView$Events;->$values()[Lcom/rivereactnative/RiveReactNativeView$Events;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->$VALUES:[Lcom/rivereactnative/RiveReactNativeView$Events;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/rivereactnative/RiveReactNativeView$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rivereactnative/RiveReactNativeView$Events;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rivereactnative/RiveReactNativeView$Events;
    .locals 1

    const-class v0, Lcom/rivereactnative/RiveReactNativeView$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rivereactnative/RiveReactNativeView$Events;

    return-object p0
.end method

.method public static values()[Lcom/rivereactnative/RiveReactNativeView$Events;
    .locals 1

    sget-object v0, Lcom/rivereactnative/RiveReactNativeView$Events;->$VALUES:[Lcom/rivereactnative/RiveReactNativeView$Events;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rivereactnative/RiveReactNativeView$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeView$Events;->mName:Ljava/lang/String;

    return-object v0
.end method
