.class public final Lcom/brentvatne/common/api/ControlsConfig;
.super Ljava/lang/Object;
.source "ControlsConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/api/ControlsConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/brentvatne/common/api/ControlsConfig;",
        "",
        "()V",
        "hideSeekBar",
        "",
        "getHideSeekBar",
        "()Z",
        "setHideSeekBar",
        "(Z)V",
        "seekIncrementMS",
        "",
        "getSeekIncrementMS",
        "()I",
        "setSeekIncrementMS",
        "(I)V",
        "Companion",
        "react-native-video_release"
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
.field public static final Companion:Lcom/brentvatne/common/api/ControlsConfig$Companion;


# instance fields
.field private hideSeekBar:Z

.field private seekIncrementMS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/common/api/ControlsConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/common/api/ControlsConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/common/api/ControlsConfig;->Companion:Lcom/brentvatne/common/api/ControlsConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/brentvatne/common/api/ControlsConfig;->seekIncrementMS:I

    return-void
.end method

.method public static final parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/ControlsConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/brentvatne/common/api/ControlsConfig;->Companion:Lcom/brentvatne/common/api/ControlsConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/brentvatne/common/api/ControlsConfig$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/ControlsConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getHideSeekBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/common/api/ControlsConfig;->hideSeekBar:Z

    return v0
.end method

.method public final getSeekIncrementMS()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/ControlsConfig;->seekIncrementMS:I

    return v0
.end method

.method public final setHideSeekBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/common/api/ControlsConfig;->hideSeekBar:Z

    return-void
.end method

.method public final setSeekIncrementMS(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/ControlsConfig;->seekIncrementMS:I

    return-void
.end method
