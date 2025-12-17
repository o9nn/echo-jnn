.class Lcom/zmxv/RNSound/RNSoundModule$4;
.super Ljava/lang/Object;
.source "RNSoundModule.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zmxv/RNSound/RNSoundModule;->play(Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field callbackWasCalled:Z

.field final synthetic this$0:Lcom/zmxv/RNSound/RNSoundModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$key:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lcom/zmxv/RNSound/RNSoundModule;Ljava/lang/Double;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->this$0:Lcom/zmxv/RNSound/RNSoundModule;

    iput-object p2, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->val$key:Ljava/lang/Double;

    iput-object p3, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->val$callback:Lcom/facebook/react/bridge/Callback;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->callbackWasCalled:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->this$0:Lcom/zmxv/RNSound/RNSoundModule;

    iget-object p2, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->val$key:Ljava/lang/Double;

    const/4 p3, 0x0

    .line 269
    invoke-static {p1, p3, p2}, Lcom/zmxv/RNSound/RNSoundModule;->-$$Nest$msetOnPlay(Lcom/zmxv/RNSound/RNSoundModule;ZLjava/lang/Double;)V

    iget-boolean p1, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->callbackWasCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 270
    monitor-exit p0

    return p2

    :cond_0
    :try_start_1
    iput-boolean p2, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->callbackWasCalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/zmxv/RNSound/RNSoundModule$4;->val$callback:Lcom/facebook/react/bridge/Callback;

    new-array v0, p2, [Ljava/lang/Object;

    .line 273
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :catch_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
