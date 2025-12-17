.class public abstract Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;
.super Ljava/lang/Object;
.source "AbstractProcessor.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/PDDocumentProcessor;


# instance fields
.field protected document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;


# direct methods
.method protected constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method
