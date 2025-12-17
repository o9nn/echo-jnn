.class public Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;
.super Ljava/lang/Object;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# static fields
.field private static final BUNDLE_KEY_VARIABLE_REPLACE_STRINGS:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.VARIABLE_REPLACE_KEYS"

.field public static final EXTRA_CALL_SERVICE:Ljava/lang/String; = "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE"

.field public static final EXTRA_CALL_SERVICE_FOREGROUND:Ljava/lang/String; = "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE_FOREGROUND"

.field public static final EXTRA_CALL_SERVICE_PACKAGE:Ljava/lang/String; = "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE_PACKAGE"

.field private static final EXTRA_PLUGIN_COMPLETION_INTENT:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.COMPLETION_INTENT"

.field private static final EXTRA_REQUESTED_TIMEOUT:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.REQUESTED_TIMEOUT"

.field public static final EXTRA_RESULT_CALL_URI:Ljava/lang/String; = "net.dinglisch.android.tasker.EXTRA_RESULT_CALL_URI"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.RESULT_CODE"

.field public static final REQUESTED_TIMEOUT_MS_MAX:I = 0x36ea98

.field public static final REQUESTED_TIMEOUT_MS_NEVER:I = 0x36ee80

.field public static final REQUESTED_TIMEOUT_MS_NONE:I = 0x0

.field public static final RESULT_CODE_FAILED:I = 0x2

.field public static final RESULT_CODE_FAILED_PLUGIN_FIRST:I = 0xa

.field public static final RESULT_CODE_OK:I = -0x1

.field public static final RESULT_CODE_OK_MINOR_FAILURES:I = 0x1

.field public static final RESULT_CODE_PENDING:I = 0x3

.field public static final RESULT_CODE_UNKNOWN:I = 0x4

.field public static final VARNAME_ERROR_MESSAGE:Ljava/lang/String; = "%errmsg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHintTimeoutMS(Landroid/os/Bundle;)I
    .locals 3

    .line 681
    const-class v0, Landroid/os/Bundle;

    const-string v1, "net.dinglisch.android.tasker.extras.HINTS"

    const-string v2, "getHintTimeoutMS"

    invoke-static {p0, v1, v0, v2}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, ".hints.TIMEOUT"

    .line 685
    const-class v1, Ljava/lang/Integer;

    invoke-static {p0, v0, v1, v2}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static hostSupportsOnFireVariableReplacement(Landroid/app/Activity;)Z
    .locals 2

    .line 512
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->hostSupportsOnFireVariableReplacement(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "TaskerPlugin"

    const-string v1, "hostSupportsOnFireVariableReplacement: null callingActivity, defaulting to false"

    .line 519
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.dinglisch.android.tasker"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getPackageVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x50

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v0, p0

    :cond_2
    :goto_1
    return v0
.end method

.method public static hostSupportsOnFireVariableReplacement(Landroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x8

    .line 495
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smhostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public static hostSupportsSynchronousExecution(Landroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x20

    .line 535
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smhostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public static hostSupportsVariableReturn(Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x2

    .line 593
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smhostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public static requestTimeoutMS(Landroid/content/Intent;I)V
    .locals 4

    const-string v0, "TaskerPlugin"

    if-gez p1, :cond_0

    .line 554
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "requestTimeoutMS: ignoring negative timeout ("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v1, 0x36ea98

    if-le p1, v1, :cond_1

    const v2, 0x36ee80

    if-eq p1, v2, :cond_1

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestTimeoutMS: requested timeout "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " exceeds maximum, setting to max (3599000)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    :cond_1
    const-string v0, "net.dinglisch.android.tasker.extras.REQUESTED_TIMEOUT"

    .line 563
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static setVariableReplaceKeys(Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "net.dinglisch.android.tasker.extras.VARIABLE_REPLACE_KEYS"

    const-string v1, "setVariableReplaceKeys"

    .line 578
    invoke-static {p1, p0, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smaddStringArrayToBundleAsString([Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static signalFinish(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-static {p0, p1, p2, p3, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->signalFinish(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static signalFinish(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/net/Uri;)Z
    .locals 5

    const-string v0, "TaskerPlugin"

    .line 617
    const-class v1, Ljava/lang/String;

    const-string v2, "net.dinglisch.android.tasker.extras.COMPLETION_INTENT"

    const-string v3, "signalFinish"

    invoke-static {p1, v2, v1, v3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 623
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signalFinish: couldn\'t parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 632
    :try_start_1
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v4, "net.dinglisch.android.tasker.extras.RESULT_CODE"

    .line 634
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p2, "net.dinglisch.android.tasker.extras.VARIABLES"

    .line 637
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string p2, "net.dinglisch.android.tasker.EXTRA_RESULT_CALL_URI"

    .line 640
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string p2, "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE_PACKAGE"

    .line 642
    const-class p3, Ljava/lang/String;

    invoke-static {p1, p2, p3, v3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE"

    .line 643
    const-class p4, Ljava/lang/String;

    invoke-static {p1, p3, p4, v3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE_FOREGROUND"

    .line 644
    const-class v4, Ljava/lang/Boolean;

    invoke-static {p1, p4, v4, v3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 646
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 648
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 650
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 653
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "signalFinish: host was not in foreground: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 658
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "signalFinish: bad URI: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    return v2
.end method
