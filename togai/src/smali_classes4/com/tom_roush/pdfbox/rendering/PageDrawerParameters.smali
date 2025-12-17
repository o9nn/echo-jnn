.class public final Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;
.super Ljava/lang/Object;
.source "PageDrawerParameters.java"


# instance fields
.field private final destination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

.field private final imageDownscalingOptimizationThreshold:F

.field private final page:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

.field private final renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

.field private final subsamplingAllowed:Z


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/rendering/PDFRenderer;Lcom/tom_roush/pdfbox/pdmodel/PDPage;ZLcom/tom_roush/pdfbox/rendering/RenderDestination;F)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->page:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    iput-boolean p3, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->subsamplingAllowed:Z

    iput-object p4, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->destination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    iput p5, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->imageDownscalingOptimizationThreshold:F

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/tom_roush/pdfbox/rendering/RenderDestination;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->destination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    return-object v0
.end method

.method public getImageDownscalingOptimizationThreshold()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->imageDownscalingOptimizationThreshold:F

    return v0
.end method

.method public getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->page:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    return-object v0
.end method

.method getRenderer()Lcom/tom_roush/pdfbox/rendering/PDFRenderer;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    return-object v0
.end method

.method public isSubsamplingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->subsamplingAllowed:Z

    return v0
.end method
