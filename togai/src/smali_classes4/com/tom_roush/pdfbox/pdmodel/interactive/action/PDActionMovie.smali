.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionMovie;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
.source "PDActionMovie.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "Movie"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>()V

    const-string v0, "Movie"

    .line 39
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionMovie;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getS()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionMovie;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setS(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionMovie;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
