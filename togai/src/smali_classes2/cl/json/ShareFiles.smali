.class public Lcl/json/ShareFiles;
.super Ljava/lang/Object;
.source "ShareFiles.java"


# instance fields
.field private filenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intentType:Ljava/lang/String;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private useInternalStorage:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/ArrayList;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/json/ShareFiles;->uris:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 36
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcl/json/ShareFiles;->uris:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcl/json/ShareFiles;->filenames:Ljava/util/ArrayList;

    iput-object p3, p0, Lcl/json/ShareFiles;->useInternalStorage:Ljava/lang/Boolean;

    iput-object p4, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p4, p5}, Lcl/json/ShareFiles;-><init>(Lcom/facebook/react/bridge/ReadableArray;Ljava/util/ArrayList;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p3, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    return-void
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lcl/json/ShareFiles;->useInternalStorage:Ljava/lang/Boolean;

    .line 129
    invoke-static {v0, p1, v1}, Lcl/json/RNSharePathUtil;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isBase64File(Landroid/net/Uri;)Z
    .locals 4

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "*/*"

    iput-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .locals 5

    .line 90
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcl/json/ShareFiles;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 101
    invoke-direct {p0, p1}, Lcl/json/ShareFiles;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcl/json/ShareFiles;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p1, "*/*"

    if-nez v0, :cond_3

    move-object v0, p1

    :cond_3
    iget-object v2, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    if-nez v2, :cond_4

    iput-object v0, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object p1, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_7
    return v1
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/json/ShareFiles;->intentType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "*/*"

    :cond_0
    return-object v0
.end method

.method public getURI()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcl/json/ShareFiles;->uris:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcl/json/ShareFiles;->uris:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 140
    invoke-direct {p0, v4}, Lcl/json/ShareFiles;->isBase64File(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v0, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v7, ";base64,"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcl/json/ShareFiles;->filenames:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    if-lt v6, v7, :cond_0

    iget-object v5, p0, Lcl/json/ShareFiles;->filenames:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    :try_start_0
    iget-object v6, p0, Lcl/json/ShareFiles;->useInternalStorage:Ljava/lang/Boolean;

    .line 146
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v6

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    .line 147
    :goto_2
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 149
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdirs failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_3
    :goto_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 153
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 155
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-object v4, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 156
    invoke-static {v4, v6}, Lcl/json/RNSharePathUtil;->compatUriFromFile(Lcom/facebook/react/bridge/ReactContext;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 158
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 160
    :cond_4
    invoke-direct {p0, v4}, Lcl/json/ShareFiles;->isLocalFile(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcl/json/ShareFiles;->filenames:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-lt v5, v6, :cond_5

    iget-object v5, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 163
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcl/json/ShareFiles;->filenames:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcl/json/RNSharePathUtil;->compatUriFromFile(Lcom/facebook/react/bridge/ReactContext;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcl/json/ShareFiles;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 165
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcl/json/RNSharePathUtil;->compatUriFromFile(Lcom/facebook/react/bridge/ReactContext;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method

.method public isFile()Z
    .locals 4

    iget-object v0, p0, Lcl/json/ShareFiles;->uris:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 66
    invoke-direct {p0, v2}, Lcl/json/ShareFiles;->isBase64File(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcl/json/ShareFiles;->isLocalFile(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    :cond_3
    return v2
.end method
