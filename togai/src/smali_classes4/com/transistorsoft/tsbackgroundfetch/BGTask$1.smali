.class Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;
.super Ljava/lang/Object;
.source "BGTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/BGTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$CompletionHandler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BGTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;->val$context:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BGTask;

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BGTask$1;->val$context:Landroid/content/Context;

    .line 81
    invoke-virtual {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BGTask;->onTimeout(Landroid/content/Context;)V

    return-void
.end method
