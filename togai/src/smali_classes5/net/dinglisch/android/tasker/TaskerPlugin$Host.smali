.class public Lnet/dinglisch/android/tasker/TaskerPlugin$Host;
.super Ljava/lang/Object;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Host"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCapabilities(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.extras.HOST_CAPABILITIES"

    .line 873
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static addCompletionIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE_PACKAGE"

    .line 886
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE"

    .line 887
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "net.dinglisch.android.tasker.EXTRA_CALL_SERVICE_FOREGROUND"

    .line 888
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string p2, "net.dinglisch.android.tasker.extras.COMPLETION_INTENT"

    .line 892
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    .line 890
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static addHintTimeoutMS(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "addHintTimeoutMS"

    .line 935
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Host;->getHintsBundle(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, ".hints.TIMEOUT"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static cleanHints(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.extras.HINTS"

    .line 993
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static cleanRelevantVariables(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.RELEVANT_VARIABLES"

    .line 989
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static cleanRequestedTimeout(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.extras.REQUESTED_TIMEOUT"

    .line 997
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static cleanSettingReplaceVariables(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.extras.VARIABLE_REPLACE_KEYS"

    .line 1001
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private static getHintsBundle(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 940
    const-class v0, Landroid/os/Bundle;

    const-string v1, "net.dinglisch.android.tasker.extras.HINTS"

    invoke-static {p0, v1, v0, p1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_0

    .line 943
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 944
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method public static getKeysWithEncoding(Landroid/os/Bundle;Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;)[Ljava/lang/String;
    .locals 1

    .line 973
    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    invoke-virtual {v0, p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "net.dinglisch.android.tasker.JSON_ENCODED_KEYS"

    const-string v0, "getKeyEncoding:JSON"

    .line 974
    invoke-static {p0, p1, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetStringArrayFromBundleString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 979
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Host.getKeyEncoding: unknown encoding "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskerPlugin"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getRequestedTimeoutMS(Landroid/os/Bundle;)I
    .locals 3

    .line 955
    const-class v0, Ljava/lang/Integer;

    const-string v1, "getRequestedTimeout"

    const-string v2, "net.dinglisch.android.tasker.extras.REQUESTED_TIMEOUT"

    .line 956
    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSettingResultCode(Landroid/content/Intent;)I
    .locals 3

    .line 905
    const-class v0, Ljava/lang/Integer;

    const-string v1, "getSettingResultCode"

    const-string v2, "net.dinglisch.android.tasker.extras.RESULT_CODE"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSettingVariableReplaceKeys(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 2

    const-string v0, "net.dinglisch.android.tasker.extras.VARIABLE_REPLACE_KEYS"

    const-string v1, "getSettingVariableReplaceKeys"

    .line 963
    invoke-static {p0, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetStringArrayFromBundleString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVariablesBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 921
    const-class v0, Landroid/os/Bundle;

    const-string v1, "getVariablesBundle"

    const-string v2, "net.dinglisch.android.tasker.extras.VARIABLES"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->-$$Nest$smgetBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static haveRelevantVariables(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.RELEVANT_VARIABLES"

    .line 985
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static haveRequestedTimeout(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.extras.REQUESTED_TIMEOUT"

    .line 951
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
