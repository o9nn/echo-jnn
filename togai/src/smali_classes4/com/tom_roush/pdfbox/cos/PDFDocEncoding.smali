.class final Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;
.super Ljava/lang/Object;
.source "PDFDocEncoding.java"


# static fields
.field private static final CODE_TO_UNI:[I

.field private static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field private static final UNI_TO_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->CODE_TO_UNI:[I

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->UNI_TO_CODE:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x7e

    if-le v1, v2, :cond_1

    const/16 v2, 0xa1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xad

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    int-to-char v2, v1

    .line 57
    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x18

    const/16 v1, 0x2d8

    .line 62
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x19

    const/16 v1, 0x2c7

    .line 63
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x1a

    const/16 v1, 0x2c6

    .line 64
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x1b

    const/16 v1, 0x2d9

    .line 65
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x1c

    const/16 v1, 0x2dd

    .line 66
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x1d

    const/16 v1, 0x2db

    .line 67
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x1e

    const/16 v1, 0x2da

    .line 68
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x1f

    const/16 v1, 0x2dc

    .line 69
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x7f

    const v1, 0xfffd

    .line 71
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x80

    const/16 v2, 0x2022

    .line 72
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x81

    const/16 v2, 0x2020

    .line 73
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x82

    const/16 v2, 0x2021

    .line 74
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x83

    const/16 v2, 0x2026

    .line 75
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x84

    const/16 v2, 0x2014

    .line 76
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x85

    const/16 v2, 0x2013

    .line 77
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x86

    const/16 v2, 0x192

    .line 78
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x87

    const/16 v2, 0x2044

    .line 79
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x88

    const/16 v2, 0x2039

    .line 80
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x89

    const/16 v2, 0x203a

    .line 81
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x8a

    const/16 v2, 0x2212

    .line 82
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x8b

    const/16 v2, 0x2030

    .line 83
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x8c

    const/16 v2, 0x201e

    .line 84
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x8d

    const/16 v2, 0x201c

    .line 85
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x8e

    const/16 v2, 0x201d

    .line 86
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x8f

    const/16 v2, 0x2018

    .line 87
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x90

    const/16 v2, 0x2019

    .line 88
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x91

    const/16 v2, 0x201a

    .line 89
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x92

    const/16 v2, 0x2122

    .line 90
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x93

    const v2, 0xfb01

    .line 91
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x94

    const v2, 0xfb02

    .line 92
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x95

    const/16 v2, 0x141

    .line 93
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x96

    const/16 v2, 0x152

    .line 94
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x97

    const/16 v2, 0x160

    .line 95
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x98

    const/16 v2, 0x178

    .line 96
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x99

    const/16 v2, 0x17d

    .line 97
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x9a

    const/16 v2, 0x131

    .line 98
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x9b

    const/16 v2, 0x142

    .line 99
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x9c

    const/16 v2, 0x153

    .line 100
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x9d

    const/16 v2, 0x161

    .line 101
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x9e

    const/16 v2, 0x17e

    .line 102
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0x9f

    .line 103
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    const/16 v0, 0xa0

    const/16 v1, 0x20ac

    .line 104
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->set(IC)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsChar(C)Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->UNI_TO_CODE:Ljava/util/Map;

    .line 166
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 6

    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, p0, v3

    sget-object v5, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->UNI_TO_CODE:Ljava/util/Map;

    .line 146
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 149
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static set(IC)V
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->CODE_TO_UNI:[I

    .line 114
    aput p1, v0, p0

    sget-object v0, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->UNI_TO_CODE:Ljava/util/Map;

    .line 115
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->CODE_TO_UNI:[I

    .line 126
    array-length v5, v4

    if-lt v3, v5, :cond_0

    const/16 v3, 0x3f

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 132
    :cond_0
    aget v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
