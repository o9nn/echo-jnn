.class public Lcom/tom_roush/pdfbox/filter/DecodeOptions;
.super Ljava/lang/Object;
.source "DecodeOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/filter/DecodeOptions$FinalDecodeOptions;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeOptions;


# instance fields
.field private filterSubsampled:Z

.field private sourceRegion:Landroid/graphics/Rect;

.field private subsamplingOffsetX:I

.field private subsamplingOffsetY:I

.field private subsamplingX:I

.field private subsamplingY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/tom_roush/pdfbox/filter/DecodeOptions$FinalDecodeOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/filter/DecodeOptions$FinalDecodeOptions;-><init>(Z)V

    sput-object v0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->sourceRegion:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingX:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetX:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetY:I

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->filterSubsampled:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->sourceRegion:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetX:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetY:I

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->filterSubsampled:Z

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingX:I

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingY:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/filter/DecodeOptions;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingX:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetX:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetY:I

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->filterSubsampled:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->sourceRegion:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getSourceRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->sourceRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSubsamplingOffsetX()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetX:I

    return v0
.end method

.method public getSubsamplingOffsetY()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetY:I

    return v0
.end method

.method public getSubsamplingX()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingX:I

    return v0
.end method

.method public getSubsamplingY()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingY:I

    return v0
.end method

.method public isFilterSubsampled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->filterSubsampled:Z

    return v0
.end method

.method setFilterSubsampled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->filterSubsampled:Z

    return-void
.end method

.method public setSourceRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->sourceRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setSubsamplingOffsetX(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetX:I

    return-void
.end method

.method public setSubsamplingOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingOffsetY:I

    return-void
.end method

.method public setSubsamplingX(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingX:I

    return-void
.end method

.method public setSubsamplingY(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->subsamplingY:I

    return-void
.end method
