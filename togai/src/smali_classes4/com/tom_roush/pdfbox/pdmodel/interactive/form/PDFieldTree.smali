.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;
.super Ljava/lang/Object;
.source "PDFieldTree.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
        ">;"
    }
.end annotation


# instance fields
.field private final acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "root cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$1;)V

    return-object v0
.end method
