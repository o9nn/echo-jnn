.class public enum Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;
.super Ljava/lang/Enum;
.source "PDTransitionDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

.field public static final enum BOTTOM_TO_TOP:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

.field public static final enum LEFT_TO_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

.field public static final enum NONE:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

.field public static final enum RIGHT_TO_LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

.field public static final enum TOP_LEFT_TO_BOTTOM_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

.field public static final enum TOP_TO_BOTTOM:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;


# instance fields
.field private final degrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->LEFT_TO_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    .line 38
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    const/16 v3, 0x5a

    const-string v4, "BOTTOM_TO_TOP"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->BOTTOM_TO_TOP:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    .line 42
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    const/16 v4, 0xb4

    const-string v6, "RIGHT_TO_LEFT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->RIGHT_TO_LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    const/16 v6, 0x10e

    const-string v8, "TOP_TO_BOTTOM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->TOP_TO_BOTTOM:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    .line 46
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    const/16 v8, 0x13b

    const-string v10, "TOP_LEFT_TO_BOTTOM_RIGHT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->TOP_LEFT_TO_BOTTOM_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    .line 50
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection$1;

    const-string v10, "NONE"

    const/4 v12, 0x5

    invoke-direct {v8, v10, v12, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection$1;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->NONE:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v3, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    .line 32
    aput-object v8, v10, v12

    sput-object v10, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->degrees:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    .line 32
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    .line 32
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;

    return-object v0
.end method


# virtual methods
.method public getCOSBase()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->degrees:I

    int-to-long v0, v0

    .line 71
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    return-object v0
.end method
