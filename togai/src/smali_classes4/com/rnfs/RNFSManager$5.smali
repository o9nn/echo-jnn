.class Lcom/rnfs/RNFSManager$5;
.super Ljava/lang/Object;
.source "RNFSManager.java"

# interfaces
.implements Lcom/rnfs/DownloadParams$OnDownloadProgress;


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


# direct methods
.method constructor <init>(Lcom/rnfs/RNFSManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rnfs/RNFSManager$5;->this$0:Lcom/rnfs/RNFSManager;

    iput p2, p0, Lcom/rnfs/RNFSManager$5;->val$jobId:I

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(JJ)V
    .locals 3

    .line 763
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "jobId"

    iget v2, p0, Lcom/rnfs/RNFSManager$5;->val$jobId:I

    .line 765
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "contentLength"

    long-to-double p1, p1

    .line 766
    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "bytesWritten"

    long-to-double p2, p3

    .line 767
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    iget-object p1, p0, Lcom/rnfs/RNFSManager$5;->this$0:Lcom/rnfs/RNFSManager;

    .line 769
    invoke-static {p1}, Lcom/rnfs/RNFSManager;->access$100(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    const-string p3, "DownloadProgress"

    invoke-static {p1, p2, p3, v0}, Lcom/rnfs/RNFSManager;->-$$Nest$msendEvent(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
