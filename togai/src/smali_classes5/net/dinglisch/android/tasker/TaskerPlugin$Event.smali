.class public Lnet/dinglisch/android/tasker/TaskerPlugin$Event;
.super Ljava/lang/Object;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field private static final EXTRA_REQUEST_QUERY_PASS_THROUGH_DATA:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.PASS_THROUGH_DATA"

.field public static final PASS_THROUGH_BUNDLE_MESSAGE_ID_KEY:Ljava/lang/String; = "net.dinglisch.android.tasker.MESSAGE_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPassThroughData(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 767
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->retrieveOrCreatePassThroughBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    .line 769
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public static addPassThroughMessageID(Landroid/content/Intent;)I
    .locals 2

    .line 808
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->retrieveOrCreatePassThroughBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    .line 810
    invoke-static {}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getPositiveNonRepeatingRandomInteger()I

    move-result v0

    const-string v1, "net.dinglisch.android.tasker.MESSAGE_ID"

    .line 812
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return v0
.end method

.method public static hostSupportsRequestQueryDataPassThrough(Landroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x40

    .line 735
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smhostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method private static retrieveOrCreatePassThroughBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "net.dinglisch.android.tasker.extras.PASS_THROUGH_DATA"

    .line 852
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 855
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 856
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static retrievePassThroughData(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3

    .line 785
    const-class v0, Landroid/os/Bundle;

    const-string v1, "retrievePassThroughData"

    const-string v2, "net.dinglisch.android.tasker.extras.PASS_THROUGH_DATA"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static retrievePassThroughMessageID(Landroid/content/Intent;)I
    .locals 3

    .line 830
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->retrievePassThroughData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 833
    const-class v0, Ljava/lang/Integer;

    const-string v1, "retrievePassThroughMessageID"

    const-string v2, "net.dinglisch.android.tasker.MESSAGE_ID"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
