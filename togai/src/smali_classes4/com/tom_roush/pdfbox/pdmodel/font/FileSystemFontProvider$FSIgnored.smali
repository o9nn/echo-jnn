.class final Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;
.super Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;
.source "FileSystemFontProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FSIgnored"
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 319
    invoke-direct/range {v0 .. v12}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)V

    return-void
.end method
