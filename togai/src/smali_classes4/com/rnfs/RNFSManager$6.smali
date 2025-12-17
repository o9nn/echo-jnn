.class Lcom/rnfs/RNFSManager$6;
.super Ljava/lang/Object;
.source "RNFSManager.java"

# interfaces
.implements Lcom/rnfs/UploadParams$onUploadComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnfs/RNFSManager;->uploadFiles(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    iput-object p1, p0, Lcom/rnfs/RNFSManager$6;->this$0:Lcom/rnfs/RNFSManager;

    iput p2, p0, Lcom/rnfs/RNFSManager$6;->val$jobId:I

    iput-object p3, p0, Lcom/rnfs/RNFSManager$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p4, p0, Lcom/rnfs/RNFSManager$6;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadComplete(Lcom/rnfs/UploadResult;)V
    .locals 4

    .line 820
    iget-object v0, p1, Lcom/rnfs/UploadResult;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 821
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "jobId"

    iget v2, p0, Lcom/rnfs/RNFSManager$6;->val$jobId:I

    .line 823
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "statusCode"

    .line 824
    iget v2, p1, Lcom/rnfs/UploadResult;->statusCode:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "headers"

    .line 825
    iget-object v2, p1, Lcom/rnfs/UploadResult;->headers:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "body"

    .line 826
    iget-object p1, p1, Lcom/rnfs/UploadResult;->body:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rnfs/RNFSManager$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 827
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rnfs/RNFSManager$6;->this$0:Lcom/rnfs/RNFSManager;

    iget-object v1, p0, Lcom/rnfs/RNFSManager$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/rnfs/RNFSManager$6;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "toUrl"

    .line 829
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/rnfs/UploadResult;->exception:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, p1}, Lcom/rnfs/RNFSManager;->-$$Nest$mreject(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
