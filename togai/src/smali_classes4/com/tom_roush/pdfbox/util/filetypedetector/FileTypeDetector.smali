.class public final Lcom/tom_roush/pdfbox/util/filetypedetector/FileTypeDetector;
.super Ljava/lang/Object;
.source "FileTypeDetector.java"


# static fields
.field private static final root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie<",
            "Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 41
    new-instance v0, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileTypeDetector;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;

    .line 42
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->UNKNOWN:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->setDefaultValue(Ljava/lang/Object;)V

    .line 46
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->JPEG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    const/4 v2, 0x1

    new-array v3, v2, [[B

    const/4 v4, 0x2

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 47
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->TIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v7, "II"

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    new-array v5, v4, [B

    fill-array-data v5, :array_1

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 48
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->TIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v8, "MM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    new-array v5, v4, [B

    fill-array-data v5, :array_2

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 49
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PSD:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const-string v5, "8BPS"

    sget-object v9, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 50
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 52
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->BMP:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const-string v5, "BM"

    sget-object v9, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 53
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->GIF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const-string v5, "GIF87a"

    sget-object v9, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 54
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->GIF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const-string v5, "GIF89a"

    sget-object v9, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 55
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->ICO:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const/4 v5, 0x4

    new-array v9, v5, [B

    fill-array-data v9, :array_4

    aput-object v9, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 57
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PCX:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const/4 v9, 0x3

    new-array v10, v9, [B

    fill-array-data v10, :array_5

    aput-object v10, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 58
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PCX:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    new-array v10, v9, [B

    fill-array-data v10, :array_6

    aput-object v10, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 59
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PCX:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    new-array v10, v9, [B

    fill-array-data v10, :array_7

    aput-object v10, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 60
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PCX:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    new-array v10, v9, [B

    fill-array-data v10, :array_8

    aput-object v10, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 61
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->RIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const-string v10, "RIFF"

    sget-object v11, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    aput-object v10, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 65
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->CRW:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v9, [[B

    sget-object v9, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    aput-object v9, v3, v6

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    aput-object v5, v3, v2

    const-string v5, "HEAPCCDR"

    sget-object v9, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 66
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->CR2:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_a

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 67
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->NEF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x7

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 68
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->ORF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    const-string v5, "IIRO"

    sget-object v8, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    new-array v5, v4, [B

    fill-array-data v5, :array_c

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 69
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->ORF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    const-string v5, "IIRS"

    sget-object v8, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    new-array v5, v4, [B

    fill-array-data v5, :array_d

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 70
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->RAF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v2, [[B

    const-string v5, "FUJIFILMCCD-RAW"

    sget-object v8, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    .line 71
    sget-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->RW2:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    new-array v3, v4, [[B

    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v6

    new-array v4, v4, [B

    fill-array-data v4, :array_e

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->addPath(Ljava/lang/Object;[[B)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2at
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x2at
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0xat
        0x0t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0xat
        0x2t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0xat
        0x3t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0xat
        0x5t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x1at
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x2at
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x43t
        0x52t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x55t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectFileType(Ljava/io/BufferedInputStream;)Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileTypeDetector;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;

    .line 97
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->getMaxDepth()I

    move-result v1

    .line 99
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 101
    new-array v1, v1, [B

    .line 102
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 112
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->find([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    return-object p0

    .line 106
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream ended before file\'s magic number could be determined."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream must support mark/reset"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static detectFileType([B)Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileTypeDetector;->root:Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;

    .line 117
    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/util/filetypedetector/ByteTrie;->find([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    return-object p0
.end method
