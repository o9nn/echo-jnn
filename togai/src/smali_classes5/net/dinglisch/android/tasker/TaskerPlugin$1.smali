.class synthetic Lnet/dinglisch/android/tasker/TaskerPlugin$1;
.super Ljava/lang/Object;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/dinglisch/android/tasker/TaskerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$dinglisch$android$tasker$TaskerPlugin$Encoding:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    invoke-static {}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->values()[Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$1;->$SwitchMap$net$dinglisch$android$tasker$TaskerPlugin$Encoding:[I

    :try_start_0
    sget-object v1, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    invoke-virtual {v1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
