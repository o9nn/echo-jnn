.class public final Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;,
        Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$AbstractSyntaxHandler;,
        Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;,
        Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$1;)V

    .line 47
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->access$100(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;)V

    return-void
.end method
