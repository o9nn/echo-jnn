.class Lcom/rnfs/RNFSManager$1;
.super Lcom/rnfs/RNFSManager$CopyFileTask;
.source "RNFSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnfs/RNFSManager;->moveFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnfs/RNFSManager;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$inFile:Ljava/io/File;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnfs/RNFSManager;Ljava/io/File;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/rnfs/RNFSManager$1;->this$0:Lcom/rnfs/RNFSManager;

    iput-object p2, p0, Lcom/rnfs/RNFSManager$1;->val$inFile:Ljava/io/File;

    iput-object p3, p0, Lcom/rnfs/RNFSManager$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p4, p0, Lcom/rnfs/RNFSManager$1;->val$filepath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager$CopyFileTask;-><init>(Lcom/rnfs/RNFSManager;Lcom/rnfs/RNFSManager$CopyFileTask-IA;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rnfs/RNFSManager$1;->val$inFile:Ljava/io/File;

    .line 374
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/rnfs/RNFSManager$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x1

    .line 375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/rnfs/RNFSManager$1;->this$0:Lcom/rnfs/RNFSManager;

    iget-object v1, p0, Lcom/rnfs/RNFSManager$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/rnfs/RNFSManager$1;->val$filepath:Ljava/lang/String;

    .line 378
    invoke-static {v0, v1, v2, p1}, Lcom/rnfs/RNFSManager;->-$$Nest$mreject(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 370
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/rnfs/RNFSManager$1;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
