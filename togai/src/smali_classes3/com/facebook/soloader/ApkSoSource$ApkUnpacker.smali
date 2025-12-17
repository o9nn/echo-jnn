.class public Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;
.super Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.source "ApkSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ApkSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApkUnpacker"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mLibDir:Ljava/io/File;

.field final synthetic this$0:Lcom/facebook/soloader/ApkSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ApkSoSource;Lcom/facebook/soloader/ExtractFromZipSoSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/ApkSoSource;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V

    .line 71
    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/facebook/soloader/ApkSoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    .line 72
    invoke-static {p1}, Lcom/facebook/soloader/ApkSoSource;->access$000(Lcom/facebook/soloader/ApkSoSource;)I

    move-result p1

    iput p1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mFlags:I

    return-void
.end method


# virtual methods
.method protected shouldExtract(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 7

    .line 79
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/ApkSoSource;

    .line 80
    iget-object v1, v1, Lcom/facebook/soloader/ApkSoSource;->mCorruptedLib:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->this$0:Lcom/facebook/soloader/ApkSoSource;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p1, Lcom/facebook/soloader/ApkSoSource;->mCorruptedLib:Ljava/lang/String;

    const-string p1, "allowing consideration of corrupted lib %s"

    .line 82
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    iget v1, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mFlags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "allowing consideration of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": self-extraction preferred"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 89
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 91
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->mLibDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "not allowing consideration of %s: %s not in lib dir"

    .line 93
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v5

    .line 94
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string v4, ""

    move v5, v2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 104
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, p2, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "not allowing consideration of %s: %s, IOException when constructing path: %s"

    .line 102
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_5

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "allowing consideration of %s: %s not in system lib dir"

    .line 109
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 115
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p1

    cmp-long v6, v4, p1

    if-eqz v6, :cond_4

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK"

    .line 119
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 125
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "not allowing consideration of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": deferring to libdir"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v3

    move-object p1, v4

    :goto_2
    const-string p2, "ApkSoSource"

    .line 131
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
