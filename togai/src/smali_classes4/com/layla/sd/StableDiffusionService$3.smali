.class Lcom/layla/sd/StableDiffusionService$3;
.super Ljava/lang/Object;
.source "StableDiffusionService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/sd/StableDiffusionService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/layla/sd/StableDiffusionService;

.field private touchStartTime:J


# direct methods
.method constructor <init>(Lcom/layla/sd/StableDiffusionService;)V
    .locals 2

    iput-object p1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layla/sd/StableDiffusionService$3;->touchStartTime:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 222
    invoke-static {p1}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetparams(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/layla/sd/StableDiffusionService$3;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 223
    invoke-static {p1}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetparams(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/layla/sd/StableDiffusionService$3;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 226
    invoke-static {p1}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetwindowManager(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    invoke-static {p2}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetfloatingWidget(Lcom/layla/sd/StableDiffusionService;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    invoke-static {v1}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetparams(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    .line 209
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/layla/sd/StableDiffusionService$3;->touchStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x96

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/layla/sd/StableDiffusionService$3;->initialTouchY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 213
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    const-class v1, Lcom/layla/MainActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x14000000

    .line 214
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 215
    invoke-virtual {p2, p1}, Lcom/layla/sd/StableDiffusionService;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 197
    invoke-static {p1}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetparams(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialX:I

    iget-object p1, p0, Lcom/layla/sd/StableDiffusionService$3;->this$0:Lcom/layla/sd/StableDiffusionService;

    .line 198
    invoke-static {p1}, Lcom/layla/sd/StableDiffusionService;->-$$Nest$fgetparams(Lcom/layla/sd/StableDiffusionService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialY:I

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialTouchX:F

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/layla/sd/StableDiffusionService$3;->initialTouchY:F

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/layla/sd/StableDiffusionService$3;->touchStartTime:J

    return v0
.end method
