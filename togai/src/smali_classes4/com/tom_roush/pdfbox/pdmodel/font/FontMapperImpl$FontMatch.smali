.class Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;
.super Ljava/lang/Object;
.source "FontMapperImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final info:Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

.field score:D


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;)V
    .locals 0

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->info:Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;)I
    .locals 4

    .line 752
    iget-wide v0, p1, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 739
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->compareTo(Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;)I

    move-result p1

    return p1
.end method
