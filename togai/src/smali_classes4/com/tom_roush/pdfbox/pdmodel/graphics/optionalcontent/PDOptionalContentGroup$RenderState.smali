.class public final enum Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;
.super Ljava/lang/Enum;
.source "PDOptionalContentGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

.field public static final enum OFF:Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

.field public static final enum ON:Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;


# instance fields
.field private final name:Lcom/tom_roush/pdfbox/cos/COSName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    const/4 v1, 0x0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ON:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;-><init>(Ljava/lang/String;ILcom/tom_roush/pdfbox/cos/COSName;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->ON:Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    .line 62
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    const/4 v2, 0x1

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->OFF:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v4, "OFF"

    invoke-direct {v1, v4, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;-><init>(Ljava/lang/String;ILcom/tom_roush/pdfbox/cos/COSName;)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->OFF:Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    filled-new-array {v0, v1}, [Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->name:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method public static valueOf(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    .line 57
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    .line 57
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    return-object v0
.end method


# virtual methods
.method public getName()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->name:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method
