.class public Lnet/dinglisch/android/tasker/TaskerPlugin$Condition;
.super Ljava/lang/Object;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "net.dinglisch.android.tasker.EXTRA_RESULT_RECEIVER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResultReceiver(Landroid/content/Intent;)Landroid/os/ResultReceiver;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 719
    :cond_0
    const-class v0, Landroid/os/ResultReceiver;

    const-string v1, "getResultReceiver"

    const-string v2, "net.dinglisch.android.tasker.EXTRA_RESULT_RECEIVER"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    return-object p0
.end method

.method public static hostSupportsVariableReturn(Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x4

    .line 711
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smhostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method
