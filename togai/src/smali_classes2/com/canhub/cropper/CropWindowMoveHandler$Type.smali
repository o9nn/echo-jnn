.class public final enum Lcom/canhub/cropper/CropWindowMoveHandler$Type;
.super Ljava/lang/Enum;
.source "CropWindowMoveHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropWindowMoveHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "TOP_LEFT",
        "TOP_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_RIGHT",
        "LEFT",
        "TOP",
        "RIGHT",
        "BOTTOM",
        "CENTER",
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
.field private static final synthetic $VALUES:[Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public static final enum TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;


# direct methods
.method private static final synthetic $values()[Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 9

    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v2, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v3, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v4, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v5, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v6, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v7, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v8, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    filled-new-array/range {v0 .. v8}, [Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "BOTTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    const-string v1, "CENTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    invoke-static {}, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->$values()[Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->$VALUES:[Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 1

    const-class v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0
.end method

.method public static values()[Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 1

    sget-object v0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->$VALUES:[Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object v0
.end method
