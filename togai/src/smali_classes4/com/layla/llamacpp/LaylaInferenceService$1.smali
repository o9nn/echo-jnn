.class Lcom/layla/llamacpp/LaylaInferenceService$1;
.super Landroid/content/BroadcastReceiver;
.source "LaylaInferenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/llamacpp/LaylaInferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/llamacpp/LaylaInferenceService;


# direct methods
.method constructor <init>(Lcom/layla/llamacpp/LaylaInferenceService;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/llamacpp/LaylaInferenceService$1;->this$0:Lcom/layla/llamacpp/LaylaInferenceService;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "eventName"

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "FOREGROUND"

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/layla/llamacpp/LaylaInferenceService$1;->this$0:Lcom/layla/llamacpp/LaylaInferenceService;

    const/4 p2, 0x0

    .line 70
    invoke-static {p1, p2}, Lcom/layla/llamacpp/LaylaInferenceService;->-$$Nest$fputisBackground(Lcom/layla/llamacpp/LaylaInferenceService;Z)V

    iget-object p1, p0, Lcom/layla/llamacpp/LaylaInferenceService$1;->this$0:Lcom/layla/llamacpp/LaylaInferenceService;

    .line 71
    invoke-static {p1, p2}, Lcom/layla/llamacpp/LaylaInferenceService;->-$$Nest$mupdateMessageBadge(Lcom/layla/llamacpp/LaylaInferenceService;I)V

    goto :goto_0

    :cond_0
    const-string p2, "BACKGROUND"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/layla/llamacpp/LaylaInferenceService$1;->this$0:Lcom/layla/llamacpp/LaylaInferenceService;

    const/4 p2, 0x1

    .line 73
    invoke-static {p1, p2}, Lcom/layla/llamacpp/LaylaInferenceService;->-$$Nest$fputisBackground(Lcom/layla/llamacpp/LaylaInferenceService;Z)V

    :cond_1
    :goto_0
    return-void
.end method
