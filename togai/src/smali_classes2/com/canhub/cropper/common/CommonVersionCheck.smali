.class public final Lcom/canhub/cropper/common/CommonVersionCheck;
.super Ljava/lang/Object;
.source "CommonVersionCheck.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/canhub/cropper/common/CommonVersionCheck;",
        "",
        "()V",
        "isAtLeastJ18",
        "",
        "isAtLeastM23",
        "isAtLeastO26",
        "isAtLeastQ29",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/canhub/cropper/common/CommonVersionCheck;

    invoke-direct {v0}, Lcom/canhub/cropper/common/CommonVersionCheck;-><init>()V

    sput-object v0, Lcom/canhub/cropper/common/CommonVersionCheck;->INSTANCE:Lcom/canhub/cropper/common/CommonVersionCheck;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAtLeastJ18()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isAtLeastM23()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isAtLeastO26()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isAtLeastQ29()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
