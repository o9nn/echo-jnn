.class Lcom/transistorsoft/tsbackgroundfetch/BootReceiver$1;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BootReceiver$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BootReceiver;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BootReceiver$1;->val$context:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BootReceiver$1;->val$context:Landroid/content/Context;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetch;->onBoot()V

    return-void
.end method
