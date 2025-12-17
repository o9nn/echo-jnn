.class public Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;
.super Ljava/lang/Object;
.source "FontMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tom_roush/fontbox/FontBoxFont;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final font:Lcom/tom_roush/fontbox/FontBoxFont;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final isFallback:Z


# direct methods
.method public constructor <init>(Lcom/tom_roush/fontbox/FontBoxFont;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->font:Lcom/tom_roush/fontbox/FontBoxFont;

    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->isFallback:Z

    return-void
.end method


# virtual methods
.method public getFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->font:Lcom/tom_roush/fontbox/FontBoxFont;

    return-object v0
.end method

.method public isFallback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->isFallback:Z

    return v0
.end method
