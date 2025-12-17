.class public Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "OnnxruntimeJSIHelper.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "OnnxruntimeJSIHelper"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "OnnxruntimeJSIHelper"

.field private static reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# instance fields
.field protected blobModule:Lcom/facebook/react/modules/blob/BlobModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    sput-object p1, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method public static native nativeInstall(JLai/onnxruntime/reactnative/OnnxruntimeJSIHelper;)V
.end method


# virtual methods
.method public checkBlobModule()V
    .locals 2

    iget-object v0, p0, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/blob/BlobModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/blob/BlobModule;

    iput-object v0, p0, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BlobModule is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public createBlob([B)Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->checkBlobModule()V

    iget-object v0, p0, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    .line 62
    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->store([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create Blob!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBlobBuffer(Ljava/lang/String;II)[B
    .locals 1

    .line 51
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->checkBlobModule()V

    iget-object v0, p0, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    .line 52
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object p2

    iget-object p3, p0, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    .line 53
    invoke-virtual {p3, p1}, Lcom/facebook/react/modules/blob/BlobModule;->remove(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    return-object p2

    .line 55
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to resolve Blob #"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "! Not found."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "OnnxruntimeJSIHelper"

    return-object v0
.end method

.method public install()Z
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    :try_start_0
    const-string v0, "onnxruntimejsihelper"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lai/onnxruntime/reactnative/OnnxruntimeJSIHelper;->nativeInstall(JLai/onnxruntime/reactnative/OnnxruntimeJSIHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
