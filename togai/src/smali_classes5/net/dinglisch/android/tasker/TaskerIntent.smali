.class public Lnet/dinglisch/android/tasker/TaskerIntent;
.super Landroid/content/Intent;
.source "TaskerIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/dinglisch/android/tasker/TaskerIntent$Status;
    }
.end annotation


# static fields
.field public static final ACTION_CODE:Ljava/lang/String; = "action"

.field public static final ACTION_OPEN_PREFS:Ljava/lang/String; = "net.dinglisch.android.tasker.ACTION_OPEN_PREFS"

.field public static final ACTION_TASK:Ljava/lang/String; = "net.dinglisch.android.tasker.ACTION_TASK"

.field public static final ACTION_TASK_COMPLETE:Ljava/lang/String; = "net.dinglisch.android.tasker.ACTION_TASK_COMPLETE"

.field public static final ACTION_TASK_SELECT:Ljava/lang/String; = "net.dinglisch.android.tasker.ACTION_TASK_SELECT"

.field public static final APP_ARG_PREFIX:Ljava/lang/String; = "app:"

.field public static final ARG_INDEX_PREFIX:Ljava/lang/String; = "arg:"

.field private static final CUPCAKE_SDK_VERSION:I = 0x3

.field public static final DEFAULT_ENCRYPTION_KEY:Ljava/lang/String; = "default"

.field public static final ENCRYPTED_AFFIX:Ljava/lang/String; = "tec"

.field public static final EXTRA_ACTION_INDEX_PREFIX:Ljava/lang/String; = "action"

.field private static final EXTRA_INTENT_VERSION_NUMBER:Ljava/lang/String; = "version_number"

.field public static final EXTRA_OPEN_PREFS_TAB_NO:Ljava/lang/String; = "tno"

.field public static final EXTRA_PARAM_LIST:Ljava/lang/String; = "params"

.field public static final EXTRA_SUCCESS_FLAG:Ljava/lang/String; = "success"

.field public static final EXTRA_TASK_NAME:Ljava/lang/String; = "task_name"

.field public static final EXTRA_TASK_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_TASK_PRIORITY:Ljava/lang/String; = "task_priority"

.field public static final EXTRA_VAR_NAMES_LIST:Ljava/lang/String; = "varNames"

.field public static final EXTRA_VAR_VALUES_LIST:Ljava/lang/String; = "varValues"

.field public static final ICON_ARG_PREFIX:Ljava/lang/String; = "icn:"

.field private static final INTENT_VERSION_NUMBER:Ljava/lang/String; = "1.1"

.field public static final MARKET_DOWNLOAD_URL_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final MAX_NO_ARGS:I = 0xa

.field private static final MAX_PRIORITY:I = 0xa

.field private static final MIN_PRIORITY:I = 0x0

.field private static final MISC_PREFS_TAB_NO:I = 0x3

.field public static final PARAM_VAR_NAME_PREFIX:Ljava/lang/String; = "par"

.field private static final PERMISSION_RUN_TASKS:Ljava/lang/String; = "net.dinglisch.android.tasker.PERMISSION_RUN_TASKS"

.field public static final PROVIDER_COL_NAME_ENABLED:Ljava/lang/String; = "enabled"

.field public static final PROVIDER_COL_NAME_EXTERNAL_ACCESS:Ljava/lang/String; = "ext_access"

.field private static final TAG:Ljava/lang/String; = "TaskerIntent"

.field private static final TASKER_DOWNLOAD_URL:Ljava/lang/String; = "http://tasker.dinglisch.net/download.html"

.field private static final TASKER_MARKET_URL:Ljava/lang/String; = "market://details?id=net.dinglisch.android.taskerm"

.field private static final TASKER_MARKET_URL_CUPCAKE:Ljava/lang/String; = "market://details?id=net.dinglisch.android.taskercupcake"

.field public static final TASKER_PACKAGE:Ljava/lang/String; = "net.dinglisch.android.tasker"

.field public static final TASKER_PACKAGE_CUPCAKE:Ljava/lang/String; = "net.dinglisch.android.taskercupcake"

.field public static final TASKER_PACKAGE_MARKET:Ljava/lang/String; = "net.dinglisch.android.taskerm"

.field private static final TASKER_PREFS_URI:Ljava/lang/String; = "content://net.dinglisch.android.tasker/prefs"

.field public static final TASK_ID_SCHEME:Ljava/lang/String; = "id"

.field public static final TASK_NAME_DATA_SCHEME:Ljava/lang/String; = "task"

.field private static rand:Ljava/util/Random;


# instance fields
.field private actionCount:I

.field private argCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerIntent;->rand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.ACTION_TASK"

    .line 256
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->actionCount:I

    .line 257
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->setRandomData()V

    .line 258
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getRandomString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->putMetaExtras(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.ACTION_TASK"

    .line 262
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->actionCount:I

    .line 263
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->setRandomData()V

    .line 264
    invoke-direct {p0, p1}, Lnet/dinglisch/android/tasker/TaskerIntent;->putMetaExtras(Ljava/lang/String;)V

    return-void
.end method

.method public static SDKVersion()I
    .locals 2

    .line 212
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x3

    return v0
.end method

.method private getActionBundle()Landroid/os/Bundle;
    .locals 3

    iget v0, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    const/16 v1, 0xa

    const-string v2, "TaskerIntent"

    if-le v0, v1, :cond_0

    const-string v0, "maximum number of arguments exceeded (10)"

    .line 408
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->actionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "no actions added yet"

    .line 415
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static getCompletionFilter(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 2

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.dinglisch.android.tasker.ACTION_TASK_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "task"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getExternalAccessPrefsIntent()Landroid/content/Intent;
    .locals 3

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.dinglisch.android.tasker.ACTION_OPEN_PREFS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tno"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledTaskerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "net.dinglisch.android.taskerm"

    const-string v1, "net.dinglisch.android.tasker"

    const/4 v2, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 158
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static getMaxPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private getRandomString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/dinglisch/android/tasker/TaskerIntent;->rand:Ljava/util/Random;

    .line 394
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskSelectIntent()Landroid/content/Intent;
    .locals 2

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.dinglisch.android.tasker.ACTION_TASK_SELECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40840000    # 4.125f

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskerInstallIntent(Z)Landroid/content/Intent;
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    if-eqz p0, :cond_1

    .line 204
    invoke-static {}, Lnet/dinglisch/android/tasker/TaskerIntent;->SDKVersion()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const-string p0, "market://details?id=net.dinglisch.android.taskercupcake"

    goto :goto_0

    :cond_0
    const-string p0, "market://details?id=net.dinglisch.android.taskerm"

    goto :goto_0

    :cond_1
    const-string p0, "http://tasker.dinglisch.net/download.html"

    .line 202
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static havePermission(Landroid/content/Context;)Z
    .locals 3

    .line 242
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "net.dinglisch.android.tasker.PERMISSION_RUN_TASKS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static prefSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 430
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://net.dinglisch.android.tasker/prefs"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "TaskerIntent"

    const-string v0, "no cursor for content://net.dinglisch.android.tasker/prefs"

    .line 437
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 441
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 444
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_0
    return p1
.end method

.method private putMetaExtras(Ljava/lang/String;)V
    .locals 2

    const-string v0, "version_number"

    const-string v1, "1.1"

    .line 422
    invoke-virtual {p0, v0, v1}, Lnet/dinglisch/android/tasker/TaskerIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "task_name"

    .line 423
    invoke-virtual {p0, v0, p1}, Lnet/dinglisch/android/tasker/TaskerIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private setRandomData()V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getRandomString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method public static taskerInstalled(Landroid/content/Context;)Z
    .locals 0

    .line 194
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getInstalledTaskerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static testStatus(Landroid/content/Context;)Lnet/dinglisch/android/tasker/TaskerIntent$Status;
    .locals 2

    .line 175
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->taskerInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NotInstalled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->havePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NoPermission:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    goto :goto_0

    :cond_1
    const-string v0, "enabled"

    .line 179
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->prefSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    sget-object p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NotEnabled:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    goto :goto_0

    :cond_2
    const-string v0, "ext_access"

    .line 181
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->prefSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    sget-object p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->AccessBlocked:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    goto :goto_0

    .line 183
    :cond_3
    new-instance v0, Lnet/dinglisch/android/tasker/TaskerIntent;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/dinglisch/android/tasker/TaskerIntent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->receiverExists(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 184
    sget-object p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->NoReceiver:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    goto :goto_0

    .line 186
    :cond_4
    sget-object p0, Lnet/dinglisch/android/tasker/TaskerIntent$Status;->OK:Lnet/dinglisch/android/tasker/TaskerIntent$Status;

    :goto_0
    return-object p0
.end method

.method public static validatePriority(I)Z
    .locals 1

    if-gez p0, :cond_1

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addAction(I)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 2

    iget v0, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->actionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->actionCount:I

    iput v1, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    .line 322
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->actionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method public addArg(I)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 4

    .line 343
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getActionBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object p0
.end method

.method public addArg(Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 4

    .line 333
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getActionBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public addArg(Ljava/lang/String;Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 3

    .line 363
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getActionBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "arg:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public addArg(Z)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 4

    .line 353
    invoke-direct {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getActionBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "arg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/dinglisch/android/tasker/TaskerIntent;->argCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p0
.end method

.method public addLocalVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 4

    const-string v0, "varNames"

    .line 297
    invoke-virtual {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "varValues"

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v2}, Lnet/dinglisch/android/tasker/TaskerIntent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0, v0, v1}, Lnet/dinglisch/android/tasker/TaskerIntent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v2, v3}, Lnet/dinglisch/android/tasker/TaskerIntent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object v0, v1

    move-object v1, v3

    .line 309
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 3

    .line 282
    invoke-virtual {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "varNames"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskerIntent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%par"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/dinglisch/android/tasker/TaskerIntent;->addLocalVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/dinglisch/android/tasker/TaskerIntent;

    return-object p0
.end method

.method public getCompletionFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getCompletionFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    const-string v0, "task_name"

    .line 380
    invoke-virtual {p0, v0}, Lnet/dinglisch/android/tasker/TaskerIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public receiverExists(Landroid/content/Context;)Z
    .locals 1

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setTaskPriority(I)Lnet/dinglisch/android/tasker/TaskerIntent;
    .locals 1

    .line 269
    invoke-static {p1}, Lnet/dinglisch/android/tasker/TaskerIntent;->validatePriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "task_priority"

    .line 270
    invoke-virtual {p0, v0, p1}, Lnet/dinglisch/android/tasker/TaskerIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "TaskerIntent"

    const-string v0, "priority out of range: 0:10"

    .line 272
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method
