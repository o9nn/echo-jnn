.class public final Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;
.super Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;
.source "CIDFontMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping<",
        "Lcom/tom_roush/fontbox/ttf/OpenTypeFont;",
        ">;"
    }
.end annotation


# instance fields
.field private final ttf:Lcom/tom_roush/fontbox/FontBoxFont;


# direct methods
.method public constructor <init>(Lcom/tom_roush/fontbox/ttf/OpenTypeFont;Lcom/tom_roush/fontbox/FontBoxFont;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;-><init>(Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->ttf:Lcom/tom_roush/fontbox/FontBoxFont;

    return-void
.end method


# virtual methods
.method public getTrueTypeFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->ttf:Lcom/tom_roush/fontbox/FontBoxFont;

    return-object v0
.end method

.method public isCIDFont()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
