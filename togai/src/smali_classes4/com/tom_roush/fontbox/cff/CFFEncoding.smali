.class public abstract Lcom/tom_roush/fontbox/cff/CFFEncoding;
.super Lcom/tom_roush/fontbox/encoding/Encoding;
.source "CFFEncoding.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/fontbox/encoding/Encoding;-><init>()V

    return-void
.end method


# virtual methods
.method protected add(II)V
    .locals 0

    .line 51
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFStandardString;->getName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/fontbox/cff/CFFEncoding;->addCharacterEncoding(ILjava/lang/String;)V

    return-void
.end method

.method public add(IILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p3}, Lcom/tom_roush/fontbox/cff/CFFEncoding;->addCharacterEncoding(ILjava/lang/String;)V

    return-void
.end method
