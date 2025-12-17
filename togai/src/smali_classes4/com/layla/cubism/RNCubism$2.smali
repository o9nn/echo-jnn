.class Lcom/layla/cubism/RNCubism$2;
.super Ljava/lang/Object;
.source "RNCubism.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/cubism/RNCubism;->startLipSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/cubism/RNCubism;


# direct methods
.method constructor <init>(Lcom/layla/cubism/RNCubism;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layla/cubism/RNCubism;->-$$Nest$fputhandlerLooper(Lcom/layla/cubism/RNCubism;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    .line 145
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    invoke-static {v2}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgethandlerLooper(Lcom/layla/cubism/RNCubism;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/layla/cubism/RNCubism;->-$$Nest$fputpollingHandler(Lcom/layla/cubism/RNCubism;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    .line 148
    invoke-static {v0}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetpollingHandler(Lcom/layla/cubism/RNCubism;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    invoke-static {v1}, Lcom/layla/cubism/RNCubism;->-$$Nest$fgetpollVolumeRunnable(Lcom/layla/cubism/RNCubism;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "RNCubism"

    const-string v1, "AudioVisualizerThread Looper finished."

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    const/4 v1, 0x0

    .line 153
    invoke-static {v0, v1}, Lcom/layla/cubism/RNCubism;->-$$Nest$fputhandlerLooper(Lcom/layla/cubism/RNCubism;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/layla/cubism/RNCubism$2;->this$0:Lcom/layla/cubism/RNCubism;

    .line 154
    invoke-static {v0, v1}, Lcom/layla/cubism/RNCubism;->-$$Nest$fputpollingHandler(Lcom/layla/cubism/RNCubism;Landroid/os/Handler;)V

    return-void
.end method
