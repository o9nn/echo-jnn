.class Lcom/layla/sd/StableDiffusionService$1;
.super Landroid/content/BroadcastReceiver;
.source "StableDiffusionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/sd/StableDiffusionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/sd/StableDiffusionService;


# direct methods
.method constructor <init>(Lcom/layla/sd/StableDiffusionService;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/sd/StableDiffusionService$1;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "eventName"

    .line 70
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "FOREGROUND"

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$1;->this$0:Lcom/layla/sd/StableDiffusionService;

    const/4 p2, 0x0

    .line 74
    invoke-static {p1, p2}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fputisBackground(Lcom/layla/sd/StableDiffusionService;Z)V

    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$1;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 75
    invoke-static {p1, p2}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$mupdateMessageBadge(Lcom/layla/sd/StableDiffusionService;I)V

    goto :goto_0

    :cond_0
    const-string p2, "BACKGROUND"

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$1;->this$0:Lcom/layla/sd/StableDiffusionService;

    const/4 p2, 0x1

    .line 77
    invoke-static {p1, p2}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fputisBackground(Lcom/layla/sd/StableDiffusionService;Z)V

    :cond_1
    :goto_0
    return-void
.end method
