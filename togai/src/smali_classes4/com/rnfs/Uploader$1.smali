.class Lcom/rnfs/Uploader$1;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnfs/Uploader;->doInBackground([Lcom/rnfs/UploadParams;)Lcom/rnfs/UploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnfs/Uploader;


# direct methods
.method constructor <init>(Lcom/rnfs/Uploader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    .line 39
    invoke-static {v0}, Lcom/rnfs/Uploader;->-$$Nest$fgetmParams(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadParams;

    move-result-object v1

    iget-object v2, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    invoke-static {v2}, Lcom/rnfs/Uploader;->-$$Nest$fgetres(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadResult;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rnfs/Uploader;->-$$Nest$mupload(Lcom/rnfs/Uploader;Lcom/rnfs/UploadParams;Lcom/rnfs/UploadResult;)V

    iget-object v0, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    .line 40
    invoke-static {v0}, Lcom/rnfs/Uploader;->-$$Nest$fgetmParams(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadParams;

    move-result-object v0

    iget-object v0, v0, Lcom/rnfs/UploadParams;->onUploadComplete:Lcom/rnfs/UploadParams$onUploadComplete;

    iget-object v1, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    invoke-static {v1}, Lcom/rnfs/Uploader;->-$$Nest$fgetres(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rnfs/UploadParams$onUploadComplete;->onUploadComplete(Lcom/rnfs/UploadResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    .line 42
    invoke-static {v1}, Lcom/rnfs/Uploader;->-$$Nest$fgetres(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadResult;

    move-result-object v1

    iput-object v0, v1, Lcom/rnfs/UploadResult;->exception:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    .line 43
    invoke-static {v0}, Lcom/rnfs/Uploader;->-$$Nest$fgetmParams(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadParams;

    move-result-object v0

    iget-object v0, v0, Lcom/rnfs/UploadParams;->onUploadComplete:Lcom/rnfs/UploadParams$onUploadComplete;

    iget-object v1, p0, Lcom/rnfs/Uploader$1;->this$0:Lcom/rnfs/Uploader;

    invoke-static {v1}, Lcom/rnfs/Uploader;->-$$Nest$fgetres(Lcom/rnfs/Uploader;)Lcom/rnfs/UploadResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rnfs/UploadParams$onUploadComplete;->onUploadComplete(Lcom/rnfs/UploadResult;)V

    :goto_0
    return-void
.end method
