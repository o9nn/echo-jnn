.class public Lcom/rnfs/Uploader;
.super Landroid/os/AsyncTask;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/rnfs/UploadParams;",
        "[I",
        "Lcom/rnfs/UploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mParams:Lcom/rnfs/UploadParams;

.field private res:Lcom/rnfs/UploadResult;


# direct methods
.method static bridge synthetic -$$Nest$fgetmParams(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadParams;
    .locals 0

    iget-object p0, p0, Lcom/rnfs/Uploader;->mParams:Lcom/rnfs/UploadParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetres(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadResult;
    .locals 0

    iget-object p0, p0, Lcom/rnfs/Uploader;->res:Lcom/rnfs/UploadResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupload(Lcom/rnfs/Uploader;Lcom/rnfs/UploadParams;Lcom/rnfs/UploadResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rnfs/Uploader;->upload(Lcom/rnfs/UploadParams;Lcom/rnfs/UploadResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/rnfs/Uploader;->mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private upload(Lcom/rnfs/UploadParams;Lcom/rnfs/UploadResult;)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "filename"

    const-string v3, "name"

    .line 66
    :try_start_0
    iget-object v5, v0, Lcom/rnfs/UploadParams;->files:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 67
    iget-boolean v6, v0, Lcom/rnfs/UploadParams;->binaryStreamOnly:Z

    .line 69
    iget-object v7, v0, Lcom/rnfs/UploadParams;->src:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v8, 0x1

    .line 70
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 71
    iget-object v9, v0, Lcom/rnfs/UploadParams;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v9

    .line 72
    iget-object v10, v0, Lcom/rnfs/UploadParams;->method:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-nez v6, :cond_0

    const-string v10, "Content-Type"

    const-string v11, "multipart/form-data;boundary=*****"

    .line 74
    invoke-virtual {v7, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v10

    .line 78
    iget-object v11, v0, Lcom/rnfs/UploadParams;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v11, v10}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 79
    invoke-virtual {v7, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v9, v0, Lcom/rnfs/UploadParams;->fields:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const-string v10, ""

    move-object v11, v10

    .line 84
    :goto_1
    :try_start_2
    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const-string v13, "\""

    const-string v14, "Content-Disposition: form-data; name=\""

    const-string v15, "\r\n"

    const-string v4, "--"

    const-string v8, "*****"

    if-eqz v12, :cond_2

    .line 85
    :try_start_3
    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v9

    .line 86
    iget-object v9, v0, Lcom/rnfs/UploadParams;->fields:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v7

    .line 87
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    const/4 v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_d

    :cond_2
    move-object/from16 v18, v7

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    array-length v9, v5

    new-array v9, v9, [Ljava/lang/String;

    .line 91
    iget-object v12, v0, Lcom/rnfs/UploadParams;->files:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v17, v7

    const-wide/16 v19, 0x0

    move-object/from16 v21, v11

    move-object/from16 v7, v17

    const/4 v0, 0x0

    move-object/from16 v17, v10

    move-wide/from16 v10, v19

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v23, v7

    const-string v7, "filepath"

    move-object/from16 v24, v9

    const-string v9, "\r\n--*****--\r\n"

    if-eqz v22, :cond_5

    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v25, v12

    move-object/from16 v12, v22

    check-cast v12, Lcom/facebook/react/bridge/ReadableMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    :try_start_6
    invoke-interface {v12, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 94
    invoke-interface {v12, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26
    :try_end_6
    .catch Lcom/facebook/react/bridge/NoSuchKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v27, v9

    :try_start_7
    const-string v9, "filetype"

    .line 95
    invoke-interface {v12, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Lcom/facebook/react/bridge/NoSuchKeyException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_3
    move-object/from16 v34, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v34

    move-object/from16 v35, v26

    move-object/from16 v26, v3

    move-object/from16 v3, v35

    goto :goto_4

    :catch_0
    move-object/from16 v27, v9

    .line 97
    :catch_1
    :try_start_8
    invoke-interface {v12, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 98
    invoke-interface {v12, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 99
    invoke-interface {v12, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/rnfs/Uploader;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 101
    :goto_4
    new-instance v1, Ljava/io/File;

    invoke-interface {v12, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v12, v0

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v10, v0

    if-nez v6, :cond_4

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\"; filename=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    array-length v3, v5

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    if-ne v3, v12, :cond_3

    .line 110
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    move-object v9, v8

    int-to-long v7, v3

    add-long/2addr v10, v7

    goto :goto_5

    :cond_3
    move-object v9, v8

    .line 113
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-length: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v24, v12

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v0

    goto :goto_6

    :cond_4
    move-object v9, v8

    move-object/from16 v3, v23

    move-object v7, v3

    :goto_6
    add-int/lit8 v0, v12, 0x1

    move-object/from16 v1, p0

    move-object v8, v9

    move-object/from16 v2, v22

    move-object/from16 v9, v24

    move-object/from16 v12, v25

    move-object/from16 v3, v26

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_11

    :cond_5
    move-object/from16 v27, v9

    move-object/from16 v3, v23

    :try_start_9
    iget-object v0, v1, Lcom/rnfs/Uploader;->mParams:Lcom/rnfs/UploadParams;

    .line 120
    iget-object v0, v0, Lcom/rnfs/UploadParams;->onUploadBegin:Lcom/rnfs/UploadParams$onUploadBegin;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/rnfs/Uploader;->mParams:Lcom/rnfs/UploadParams;

    .line 121
    iget-object v0, v0, Lcom/rnfs/UploadParams;->onUploadBegin:Lcom/rnfs/UploadParams$onUploadBegin;

    invoke-interface {v0}, Lcom/rnfs/UploadParams$onUploadBegin;->onUploadBegin()V

    :cond_6
    if-nez v6, :cond_7

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    array-length v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v2, v10

    const-string v0, "Content-length"

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v4, v18

    :try_start_a
    invoke-virtual {v4, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_7

    :cond_7
    move-object/from16 v4, v18

    .line 129
    :goto_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 131
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 132
    :try_start_b
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    if-nez v6, :cond_8

    move-object/from16 v3, v21

    .line 135
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v3, p1

    .line 140
    iget-object v3, v3, Lcom/rnfs/UploadParams;->files:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/bridge/ReadableMap;

    if-nez v6, :cond_9

    .line 142
    aget-object v12, v24, v5

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 145
    :cond_9
    new-instance v12, Ljava/io/File;

    invoke-interface {v9, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-float v9, v13

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v9, v9, v16

    move-object/from16 v16, v7

    move/from16 p1, v8

    float-to-double v7, v9

    .line 148
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-long v7, v7

    .line 151
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    move-object/from16 v17, v3

    move-wide/from16 v21, v19

    move/from16 v3, p1

    :goto_9
    cmp-long v18, v21, v13

    if-gez v18, :cond_b

    move-object/from16 v28, v12

    move-wide/from16 v29, v21

    move-wide/from16 v31, v7

    move-object/from16 v33, v0

    .line 155
    invoke-virtual/range {v28 .. v33}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v25

    add-long v21, v21, v25

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/rnfs/Uploader;->mParams:Lcom/rnfs/UploadParams;

    .line 158
    iget-object v0, v0, Lcom/rnfs/UploadParams;->onUploadProgress:Lcom/rnfs/UploadParams$onUploadProgress;

    if-eqz v0, :cond_a

    move-wide/from16 v28, v7

    int-to-long v7, v3

    add-long v7, v7, v25

    long-to-int v0, v7

    iget-object v3, v1, Lcom/rnfs/Uploader;->mParams:Lcom/rnfs/UploadParams;

    .line 160
    iget-object v3, v3, Lcom/rnfs/UploadParams;->onUploadProgress:Lcom/rnfs/UploadParams$onUploadProgress;

    long-to-int v7, v10

    invoke-interface {v3, v7, v0}, Lcom/rnfs/UploadParams$onUploadProgress;->onUploadProgress(II)V

    move v3, v0

    goto :goto_a

    :cond_a
    move-wide/from16 v28, v7

    :goto_a
    move-object/from16 v0, v18

    move-wide/from16 v7, v28

    goto :goto_9

    :cond_b
    move-object/from16 v18, v0

    if-nez v6, :cond_c

    .line 165
    invoke-virtual {v2, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 169
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    move v8, v3

    move-object/from16 v7, v16

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    goto/16 :goto_8

    :cond_d
    if-nez v6, :cond_e

    move-object/from16 v0, v27

    .line 173
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 175
    :cond_e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 176
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 178
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 179
    :try_start_c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 180
    :try_start_d
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 181
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 182
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v8, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 186
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    :goto_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 193
    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iget-object v8, v1, Lcom/rnfs/Uploader;->res:Lcom/rnfs/UploadResult;

    .line 195
    iput-object v0, v8, Lcom/rnfs/UploadResult;->headers:Lcom/facebook/react/bridge/WritableMap;

    iget-object v0, v1, Lcom/rnfs/Uploader;->res:Lcom/rnfs/UploadResult;

    .line 196
    iput-object v6, v0, Lcom/rnfs/UploadResult;->body:Ljava/lang/String;

    iget-object v0, v1, Lcom/rnfs/Uploader;->res:Lcom/rnfs/UploadResult;

    .line 197
    iput v7, v0, Lcom/rnfs/UploadResult;->statusCode:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v4, :cond_11

    .line 200
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    :cond_11
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 204
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 206
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_11

    :catchall_3
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_e

    :catchall_6
    move-exception v0

    :goto_d
    move-object/from16 v4, v18

    goto :goto_e

    :catchall_7
    move-exception v0

    move-object v4, v7

    :goto_e
    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x0

    goto :goto_10

    :catchall_8
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    const/4 v5, 0x0

    :goto_11
    if-eqz v4, :cond_12

    .line 200
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v2, :cond_13

    .line 202
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_13
    if-eqz v3, :cond_14

    .line 204
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_14
    if-eqz v5, :cond_15

    .line 206
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 207
    :cond_15
    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/rnfs/UploadParams;)Lcom/rnfs/UploadResult;
    .locals 1

    const/4 v0, 0x0

    .line 33
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/rnfs/Uploader;->mParams:Lcom/rnfs/UploadParams;

    .line 34
    new-instance p1, Lcom/rnfs/UploadResult;

    invoke-direct {p1}, Lcom/rnfs/UploadResult;-><init>()V

    iput-object p1, p0, Lcom/rnfs/Uploader;->res:Lcom/rnfs/UploadResult;

    .line 35
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/rnfs/Uploader$1;

    invoke-direct {v0, p0}, Lcom/rnfs/Uploader$1;-><init>(Lcom/rnfs/Uploader;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/rnfs/Uploader;->res:Lcom/rnfs/UploadResult;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    check-cast p1, [Lcom/rnfs/UploadParams;

    invoke-virtual {p0, p1}, Lcom/rnfs/Uploader;->doInBackground([Lcom/rnfs/UploadParams;)Lcom/rnfs/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method protected getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "*/*"

    :cond_1
    return-object p1
.end method

.method protected stop()V
    .locals 2

    iget-object v0, p0, Lcom/rnfs/Uploader;->mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
