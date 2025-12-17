.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
.super Ljava/lang/Object;
.source "PlainTextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

.field private contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

.field private horizontalOffset:F

.field private textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

.field private textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

.field private verticalOffset:F

.field private width:F

.field private wrapLines:Z


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->wrapLines:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->width:F

    .line 94
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->horizontalOffset:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->verticalOffset:F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->wrapLines:Z

    return p0
.end method

.method static synthetic access$300(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)F
    .locals 0

    .line 83
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->width:F

    return p0
.end method

.method static synthetic access$400(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)F
    .locals 0

    .line 83
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->horizontalOffset:F

    return p0
.end method

.method static synthetic access$800(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)F
    .locals 0

    .line 83
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->verticalOffset:F

    return p0
.end method


# virtual methods
.method build()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;
    .locals 2

    .line 152
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$1;)V

    return-object v0
.end method

.method initialOffset(FF)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->horizontalOffset:F

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->verticalOffset:F

    return-object p0
.end method

.method style(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    return-object p0
.end method

.method text(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    return-object p0
.end method

.method textAlign(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    .line 126
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->valueOf(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method textAlign(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method width(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->width:F

    return-object p0
.end method

.method wrapLines(Z)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->wrapLines:Z

    return-object p0
.end method
