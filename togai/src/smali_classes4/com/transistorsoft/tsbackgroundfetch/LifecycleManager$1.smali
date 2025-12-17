.class Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$1;
.super Ljava/lang/Object;
.source "LifecycleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    .line 131
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->access$000(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;

    .line 132
    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;->access$100(Lcom/transistorsoft/tsbackgroundfetch/LifecycleManager;)V

    return-void
.end method
