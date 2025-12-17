.class final Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;
.super Ljava/lang/Object;
.source "NodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/NodesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeUpdateOperation"
.end annotation


# instance fields
.field public mNativeProps:Lcom/facebook/react/bridge/WritableMap;

.field public mViewTag:I

.field final synthetic this$0:Lcom/swmansion/reanimated/NodesManager;


# direct methods
.method public constructor <init>(Lcom/swmansion/reanimated/NodesManager;ILcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;->this$0:Lcom/swmansion/reanimated/NodesManager;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;->mViewTag:I

    iput-object p3, p0, Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;->mNativeProps:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method
