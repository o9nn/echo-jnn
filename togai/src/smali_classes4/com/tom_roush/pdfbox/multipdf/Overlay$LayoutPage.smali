.class final Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/multipdf/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutPage"
.end annotation


# instance fields
.field private final overlayContentStream:Lcom/tom_roush/pdfbox/cos/COSStream;

.field private final overlayMediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private final overlayResources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final overlayRotation:S


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;S)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayMediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayContentStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayResources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-short p4, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayRotation:S

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;SLcom/tom_roush/pdfbox/multipdf/Overlay$1;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;S)V

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayContentStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayResources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayMediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)S
    .locals 0

    .line 275
    iget-short p0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->overlayRotation:S

    return p0
.end method
