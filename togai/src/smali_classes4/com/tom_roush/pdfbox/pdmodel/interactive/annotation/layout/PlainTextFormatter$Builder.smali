.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
.super Ljava/lang/Object;
.source "PlainTextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;

.field private contents:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

.field private horizontalOffset:F

.field private textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

.field private textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;

.field private verticalOffset:F

.field private width:F

.field private wrapLines:Z


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->wrapLines:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->width:F

    .line 94
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;->LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->horizontalOffset:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->verticalOffset:F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->wrapLines:Z

    return p0
.end method

.method static synthetic access$300(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)F
    .locals 0

    .line 83
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->width:F

    return p0
.end method

.method static synthetic access$400(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)F
    .locals 0

    .line 83
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->horizontalOffset:F

    return p0
.end method

.method static synthetic access$800(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;)F
    .locals 0

    .line 83
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->verticalOffset:F

    return p0
.end method


# virtual methods
.method public build()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter;
    .locals 2

    .line 152
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$1;)V

    return-object v0
.end method

.method public initialOffset(FF)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->horizontalOffset:F

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->verticalOffset:F

    return-object p0
.end method

.method public style(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;

    return-object p0
.end method

.method public text(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;

    return-object p0
.end method

.method public textAlign(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    .line 126
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;->valueOf(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method public textAlign(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method public width(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->width:F

    return-object p0
.end method

.method public wrapLines(Z)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->wrapLines:Z

    return-object p0
.end method
