.class final Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;
.super Ljava/lang/Object;
.source "PDPageTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchContext"
.end annotation


# instance fields
.field private found:Z

.field private index:I

.field private final searched:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->index:I

    .line 416
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->searched:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$1;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;)I
    .locals 0

    .line 408
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->index:I

    return p0
.end method

.method static synthetic access$700(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;)Z
    .locals 0

    .line 408
    iget-boolean p0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->found:Z

    return p0
.end method

.method static synthetic access$800(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->visitPage(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method private visitPage(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->index:I

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->searched:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->found:Z

    return-void
.end method
