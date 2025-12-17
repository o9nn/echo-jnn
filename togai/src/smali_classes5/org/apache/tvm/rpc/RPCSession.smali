.class public Lorg/apache/tvm/rpc/RPCSession;
.super Ljava/lang/Object;
.source "RPCSession.java"


# instance fields
.field private final remoteFuncs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tvm/Function;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/tvm/Module;

.field private final tblIndex:I


# direct methods
.method constructor <init>(Lorg/apache/tvm/Module;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tvm/rpc/RPCSession;->remoteFuncs:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/tvm/rpc/RPCSession;->session:Lorg/apache/tvm/Module;

    const-string v0, "SessTableIndex"

    .line 41
    invoke-static {v0}, Lorg/apache/tvm/rpc/RPC;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Module;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lorg/apache/tvm/rpc/RPCSession;->tblIndex:I

    return-void
.end method

.method private static getBytesFromFile(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    long-to-int v0, v0

    .line 250
    new-array v1, v0, [B

    .line 256
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    sub-int v4, v0, v3

    .line 259
    :try_start_0
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v4, :cond_0

    add-int/2addr v3, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 264
    throw p0

    .line 263
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-lt v3, v0, :cond_1

    return-object v1

    .line 268
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not completely read file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is too large!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cl()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->cl(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public cl(I)Lorg/apache/tvm/Device;
    .locals 0

    .line 134
    invoke-static {p1}, Lorg/apache/tvm/Device;->opencl(I)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method

.method public cpu()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->cpu(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public cpu(I)Lorg/apache/tvm/Device;
    .locals 0

    .line 100
    invoke-static {p1}, Lorg/apache/tvm/Device;->cpu(I)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method

.method public cuda()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->cuda(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public cuda(I)Lorg/apache/tvm/Device;
    .locals 0

    .line 117
    invoke-static {p1}, Lorg/apache/tvm/Device;->cuda(I)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method

.method public device(I)Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lorg/apache/tvm/rpc/RPCSession;->device(II)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method

.method public device(II)Lorg/apache/tvm/Device;
    .locals 2

    iget v0, p0, Lorg/apache/tvm/rpc/RPCSession;->tblIndex:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x80

    .line 82
    new-instance v1, Lorg/apache/tvm/rpc/TVMRemoteDevice;

    add-int/2addr p1, v0

    invoke-direct {v1, p1, p2, p0}, Lorg/apache/tvm/rpc/TVMRemoteDevice;-><init>(IILorg/apache/tvm/rpc/RPCSession;)V

    return-object v1
.end method

.method public device(Ljava/lang/String;)Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lorg/apache/tvm/rpc/RPCSession;->device(Ljava/lang/String;I)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method

.method public device(Ljava/lang/String;I)Lorg/apache/tvm/Device;
    .locals 2

    .line 60
    new-instance v0, Lorg/apache/tvm/Device;

    invoke-direct {v0, p1, p2}, Lorg/apache/tvm/Device;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lorg/apache/tvm/rpc/RPCSession;->tblIndex:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit16 p1, p1, 0x80

    .line 62
    new-instance v1, Lorg/apache/tvm/rpc/TVMRemoteDevice;

    iget v0, v0, Lorg/apache/tvm/Device;->deviceType:I

    add-int/2addr v0, p1

    invoke-direct {v1, v0, p2, p0}, Lorg/apache/tvm/rpc/TVMRemoteDevice;-><init>(IILorg/apache/tvm/rpc/RPCSession;)V

    return-object v1
.end method

.method public download(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lorg/apache/tvm/rpc/RPCSession;->remoteFuncs:Ljava/util/Map;

    const-string v1, "download"

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tvm/Function;

    if-nez v0, :cond_0

    const-string v0, "tvm.rpc.server.download"

    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tvm/rpc/RPCSession;->remoteFuncs:Ljava/util/Map;

    .line 227
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/rpc/RPCSession;->session:Lorg/apache/tvm/Module;

    .line 50
    invoke-virtual {v0, p1}, Lorg/apache/tvm/Module;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    return-object p1
.end method

.method public loadModule(Ljava/lang/String;)Lorg/apache/tvm/Module;
    .locals 2

    const-string v0, "LoadRemoteModule"

    .line 238
    invoke-static {v0}, Lorg/apache/tvm/rpc/RPC;->getApi(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/rpc/RPCSession;->session:Lorg/apache/tvm/Module;

    invoke-virtual {v0, v1}, Lorg/apache/tvm/Function;->pushArg(Lorg/apache/tvm/Module;)Lorg/apache/tvm/Function;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/TVMValue;->asModule()Lorg/apache/tvm/Module;

    move-result-object p1

    return-object p1
.end method

.method public metal()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->metal(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public metal(I)Lorg/apache/tvm/Device;
    .locals 0

    .line 168
    invoke-static {p1}, Lorg/apache/tvm/Device;->metal(I)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tvm/rpc/RPCSession;->upload(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public upload(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lorg/apache/tvm/rpc/RPCSession;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1, p2}, Lorg/apache/tvm/rpc/RPCSession;->upload([BLjava/lang/String;)V

    return-void
.end method

.method public upload([BLjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/rpc/RPCSession;->remoteFuncs:Ljava/util/Map;

    const-string v1, "upload"

    .line 189
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tvm/Function;

    if-nez v0, :cond_0

    const-string v0, "tvm.rpc.server.upload"

    .line 191
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->getFunction(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tvm/rpc/RPCSession;->remoteFuncs:Ljava/util/Map;

    .line 192
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/tvm/Function;->pushArg(Ljava/lang/String;)Lorg/apache/tvm/Function;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/tvm/Function;->pushArg([B)Lorg/apache/tvm/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tvm/Function;->invoke()Lorg/apache/tvm/TVMValue;

    return-void

    .line 186
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please specify the upload target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public vulkan()Lorg/apache/tvm/Device;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lorg/apache/tvm/rpc/RPCSession;->vulkan(I)Lorg/apache/tvm/Device;

    move-result-object v0

    return-object v0
.end method

.method public vulkan(I)Lorg/apache/tvm/Device;
    .locals 0

    .line 151
    invoke-static {p1}, Lorg/apache/tvm/Device;->vulkan(I)Lorg/apache/tvm/Device;

    move-result-object p1

    return-object p1
.end method
