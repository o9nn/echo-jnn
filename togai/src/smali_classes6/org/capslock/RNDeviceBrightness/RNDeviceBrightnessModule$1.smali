.class Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;
.super Ljava/lang/Object;
.source "RNDeviceBrightnessModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule;->setBrightnessLevel(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$brightnessLevel:F


# direct methods
.method constructor <init>(Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule;Landroid/app/Activity;F)V
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

    iput-object p1, p0, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;->this$0:Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule;

    iput-object p2, p0, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;->val$brightnessLevel:F

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;->val$activity:Landroid/app/Activity;

    .line 38
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;->val$brightnessLevel:F

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightnessModule$1;->val$activity:Landroid/app/Activity;

    .line 40
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
