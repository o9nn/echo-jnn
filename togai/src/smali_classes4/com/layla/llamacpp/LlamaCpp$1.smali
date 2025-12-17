.class Lcom/layla/llamacpp/LlamaCpp$1;
.super Landroid/content/BroadcastReceiver;
.source "LlamaCpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/llamacpp/LlamaCpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/llamacpp/LlamaCpp;


# direct methods
.method constructor <init>(Lcom/layla/llamacpp/LlamaCpp;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/llamacpp/LlamaCpp$1;->this$0:Lcom/layla/llamacpp/LlamaCpp;

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "eventName"

    .line 51
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/layla/llamacpp/LlamaCpp$1;->this$0:Lcom/layla/llamacpp/LlamaCpp;

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/layla/llamacpp/LlamaCpp;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
