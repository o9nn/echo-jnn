.class public Lcom/layla/pdf/LaylaPdfParser;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "LaylaPdfParser.java"


# instance fields
.field private listenerCount:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/pdf/LaylaPdfParser;->listenerCount:I

    return-void
.end method


# virtual methods
.method public extractText(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 30
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/pdf/LaylaPdfParser;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->init(Landroid/content/Context;)V

    .line 37
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getText(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    .line 42
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Error"

    const-string v2, "Failed to extract text from PDF"

    .line 44
    invoke-interface {p2, v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 48
    :try_start_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :goto_1
    if-eqz p1, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :cond_1
    :goto_2
    throw p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LaylaPdfParser"

    return-object v0
.end method
