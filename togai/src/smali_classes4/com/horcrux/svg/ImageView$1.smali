.class Lcom/horcrux/svg/ImageView$1;
.super Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/ImageView;->loadBitmap(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/horcrux/svg/ImageView;


# direct methods
.method constructor <init>(Lcom/horcrux/svg/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 140
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 3

    iget-object v0, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 164
    invoke-static {v0}, Lcom/horcrux/svg/ImageView;->-$$Nest$fgetmLoading(Lcom/horcrux/svg/ImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "RNSVG: fetchDecodedImage failed!"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ReactNative"

    .line 165
    invoke-static {v2, p1, v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNewResultImpl(Landroid/graphics/Bitmap;)V
    .locals 9

    iget-object v0, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 143
    iget-object v0, v0, Lcom/horcrux/svg/ImageView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 144
    invoke-virtual {v1}, Lcom/horcrux/svg/ImageView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 145
    new-instance v8, Lcom/horcrux/svg/events/SvgLoadEvent;

    iget-object v1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 147
    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    iget-object v1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 148
    invoke-virtual {v1}, Lcom/horcrux/svg/ImageView;->getId()I

    move-result v3

    iget-object v1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    iget-object v4, v1, Lcom/horcrux/svg/ImageView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    invoke-static {v1}, Lcom/horcrux/svg/ImageView;->-$$Nest$fgeturiString(Lcom/horcrux/svg/ImageView;)Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v7, p1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/horcrux/svg/events/SvgLoadEvent;-><init>(IILcom/facebook/react/bridge/ReactContext;Ljava/lang/String;FF)V

    .line 145
    invoke-interface {v0, v8}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    iget-object p1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 153
    invoke-static {p1}, Lcom/horcrux/svg/ImageView;->-$$Nest$fgetmLoading(Lcom/horcrux/svg/ImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/horcrux/svg/ImageView$1;->this$0:Lcom/horcrux/svg/ImageView;

    .line 154
    invoke-virtual {p1}, Lcom/horcrux/svg/ImageView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/horcrux/svg/SvgView;->invalidate()V

    :cond_0
    return-void
.end method
