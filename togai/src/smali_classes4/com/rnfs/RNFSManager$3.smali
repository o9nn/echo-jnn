.class Lcom/rnfs/RNFSManager$3;
.super Ljava/lang/Object;
.source "RNFSManager.java"

# interfaces
.implements Lcom/rnfs/DownloadParams$OnTaskCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnfs/RNFSManager;->downloadFile(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnfs/RNFSManager;

.field final synthetic val$jobId:I

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnfs/RNFSManager;ILcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rnfs/RNFSManager$3;->this$0:Lcom/rnfs/RNFSManager;

    iput p2, p0, Lcom/rnfs/RNFSManager$3;->val$jobId:I

    iput-object p3, p0, Lcom/rnfs/RNFSManager$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p4, p0, Lcom/rnfs/RNFSManager$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCompleted(Lcom/rnfs/DownloadResult;)V
    .locals 4

    .line 725
    iget-object v0, p1, Lcom/rnfs/DownloadResult;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 726
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "jobId"

    iget v2, p0, Lcom/rnfs/RNFSManager$3;->val$jobId:I

    .line 728
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "statusCode"

    .line 729
    iget v2, p1, Lcom/rnfs/DownloadResult;->statusCode:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 730
    iget-wide v1, p1, Lcom/rnfs/DownloadResult;->bytesWritten:J

    long-to-double v1, v1

    const-string p1, "bytesWritten"

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    iget-object p1, p0, Lcom/rnfs/RNFSManager$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 732
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rnfs/RNFSManager$3;->this$0:Lcom/rnfs/RNFSManager;

    iget-object v1, p0, Lcom/rnfs/RNFSManager$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/rnfs/RNFSManager$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "toFile"

    .line 734
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/rnfs/DownloadResult;->exception:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, p1}, Lcom/rnfs/RNFSManager;->-$$Nest$mreject(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
