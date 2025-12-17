.class final enum Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;
.super Ljava/lang/Enum;
.source "PDCIDFontType2Embedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

.field public static final enum BRACKET:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

.field public static final enum FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

.field public static final enum SERIAL:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 416
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    const-string v2, "BRACKET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->BRACKET:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    const-string v3, "SERIAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->SERIAL:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    filled-new-array {v0, v1, v2}, [Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 414
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 414
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    return-object v0
.end method
