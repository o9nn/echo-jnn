.class public abstract Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field protected static final CHAR_CODE:I = 0x0

.field protected static final CHAR_NAME:I = 0x1


# instance fields
.field protected final codeToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final inverted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    return-void
.end method

.method public static getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 1

    .line 44
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->STANDARD_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    return-object p0

    .line 48
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->WIN_ANSI_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    return-object p0

    .line 52
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MAC_ROMAN_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;

    return-object p0

    .line 56
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MAC_EXPERT_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 58
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected add(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 109
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCodeToNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEncodingName()Ljava/lang/String;
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, ".notdef"

    return-object p1
.end method

.method public getNameToCodeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected overwrite(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 130
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 133
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
