.class Lcom/rnfs/RNFSManager$7;
.super Ljava/lang/Object;
.source "RNFSManager.java"

# interfaces
.implements Lcom/rnfs/UploadParams$onUploadBegin;


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

    iput-object p1, p0, Lcom/rnfs/RNFSManager$7;->this$0:Lcom/rnfs/RNFSManager;

    iput p2, p0, Lcom/rnfs/RNFSManager$7;->val$jobId:I

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadBegin()V
    .locals 4

    .line 837
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "jobId"

    iget v2, p0, Lcom/rnfs/RNFSManager$7;->val$jobId:I

    .line 839
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/rnfs/RNFSManager$7;->this$0:Lcom/rnfs/RNFSManager;

    .line 841
    invoke-static {v1}, Lcom/rnfs/RNFSManager;->access$200(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const-string v3, "UploadBegin"

    invoke-static {v1, v2, v3, v0}, Lcom/rnfs/RNFSManager;->-$$Nest$msendEvent(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
