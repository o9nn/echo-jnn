.class public final Lcom/tom_roush/pdfbox/filter/DecodeResult;
.super Ljava/lang/Object;
.source "DecodeResult.java"


# static fields
.field public static final DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeResult;


# instance fields
.field private colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;

.field private final parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    sput-object v0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeResult;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;

    return-void
.end method


# virtual methods
.method public getJPXColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;

    return-object v0
.end method

.method public getParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method setColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeResult;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;

    return-void
.end method
