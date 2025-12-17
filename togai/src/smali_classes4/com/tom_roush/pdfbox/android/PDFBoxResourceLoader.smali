.class public Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;
.super Ljava/lang/Object;
.source "PDFBoxResourceLoader.java"


# static fields
.field private static ASSET_MANAGER:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->ASSET_MANAGER:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "PDFBoxResourceLoader is not initialized, call PDFBoxResourceLoader.init() before use"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->ASSET_MANAGER:Landroid/content/res/AssetManager;

    .line 69
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sput-object p0, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->ASSET_MANAGER:Landroid/content/res/AssetManager;

    return-void
.end method

.method public static isReady()Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->ASSET_MANAGER:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
