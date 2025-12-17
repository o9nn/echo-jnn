.class final enum Lcom/horcrux/svg/MaskView$MaskType;
.super Ljava/lang/Enum;
.source "MaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/MaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/MaskView$MaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/MaskView$MaskType;

.field public static final enum ALPHA:Lcom/horcrux/svg/MaskView$MaskType;

.field public static final enum LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;


# direct methods
.method private static synthetic $values()[Lcom/horcrux/svg/MaskView$MaskType;
    .locals 2

    sget-object v0, Lcom/horcrux/svg/MaskView$MaskType;->LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;

    sget-object v1, Lcom/horcrux/svg/MaskView$MaskType;->ALPHA:Lcom/horcrux/svg/MaskView$MaskType;

    filled-new-array {v0, v1}, [Lcom/horcrux/svg/MaskView$MaskType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/horcrux/svg/MaskView$MaskType;

    const-string v1, "LUMINANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/MaskView$MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/MaskView$MaskType;->LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;

    .line 34
    new-instance v0, Lcom/horcrux/svg/MaskView$MaskType;

    const-string v1, "ALPHA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/MaskView$MaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/MaskView$MaskType;->ALPHA:Lcom/horcrux/svg/MaskView$MaskType;

    .line 32
    invoke-static {}, Lcom/horcrux/svg/MaskView$MaskType;->$values()[Lcom/horcrux/svg/MaskView$MaskType;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/MaskView$MaskType;->$VALUES:[Lcom/horcrux/svg/MaskView$MaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/MaskView$MaskType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/horcrux/svg/MaskView$MaskType;

    .line 32
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/MaskView$MaskType;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/MaskView$MaskType;
    .locals 1

    sget-object v0, Lcom/horcrux/svg/MaskView$MaskType;->$VALUES:[Lcom/horcrux/svg/MaskView$MaskType;

    .line 32
    invoke-virtual {v0}, [Lcom/horcrux/svg/MaskView$MaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/MaskView$MaskType;

    return-object v0
.end method
