.class public Lnet/dinglisch/android/tasker/TaskerPlugin;
.super Ljava/lang/Object;
.source "TaskerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;,
        Lnet/dinglisch/android/tasker/TaskerPlugin$Host;,
        Lnet/dinglisch/android/tasker/TaskerPlugin$Event;,
        Lnet/dinglisch/android/tasker/TaskerPlugin$Condition;,
        Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;
    }
.end annotation


# static fields
.field public static final ACTION_EDIT_EVENT:Ljava/lang/String; = "net.dinglisch.android.tasker.ACTION_EDIT_EVENT"

.field private static final BASE_KEY:Ljava/lang/String; = "net.dinglisch.android.tasker"

.field private static final BUNDLE_KEY_ENCODING_JSON_KEYS:Ljava/lang/String; = "net.dinglisch.android.tasker.JSON_ENCODED_KEYS"

.field private static final BUNDLE_KEY_HINT_PREFIX:Ljava/lang/String; = ".hints."

.field private static final BUNDLE_KEY_HINT_TIMEOUT_MS:Ljava/lang/String; = ".hints.TIMEOUT"

.field private static final BUNDLE_KEY_RELEVANT_VARIABLES:Ljava/lang/String; = "net.dinglisch.android.tasker.RELEVANT_VARIABLES"

.field private static final EXTRAS_PREFIX:Ljava/lang/String; = "net.dinglisch.android.tasker.extras."

.field private static final EXTRA_HINTS_BUNDLE:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.HINTS"

.field private static final EXTRA_HOST_CAPABILITIES:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.HOST_CAPABILITIES"

.field public static final EXTRA_HOST_CAPABILITY_ALL:I = 0xfe

.field public static final EXTRA_HOST_CAPABILITY_CONDITION_RETURN_VARIABLES:I = 0x4

.field public static final EXTRA_HOST_CAPABILITY_ENCODING_JSON:I = 0x80

.field private static final EXTRA_HOST_CAPABILITY_RELEVANT_VARIABLES:I = 0x10

.field public static final EXTRA_HOST_CAPABILITY_REQUEST_QUERY_DATA_PASS_THROUGH:I = 0x40

.field public static final EXTRA_HOST_CAPABILITY_SETTING_FIRE_VARIABLE_REPLACEMENT:I = 0x8

.field public static final EXTRA_HOST_CAPABILITY_SETTING_RETURN_VARIABLES:I = 0x2

.field public static final EXTRA_HOST_CAPABILITY_SETTING_SYNCHRONOUS_EXECUTION:I = 0x20

.field private static final EXTRA_VARIABLES_BUNDLE:Ljava/lang/String; = "net.dinglisch.android.tasker.extras.VARIABLES"

.field private static final FIRST_ON_FIRE_VARIABLES_TASKER_VERSION:I = 0x50

.field private static final RANDOM_HISTORY_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TaskerPlugin"

.field private static final VARIABLE_NAME_END_EXPRESSION:Ljava/lang/String; = "[\\w0-9&&[^_]]"

.field public static final VARIABLE_NAME_MAIN_PART_MATCH_EXPRESSION:Ljava/lang/String; = "[\\w&&[^_]][\\w0-9]+[\\w0-9&&[^_]]"

.field public static final VARIABLE_NAME_MATCH_EXPRESSION:Ljava/lang/String; = "%+[\\w&&[^_]][\\w0-9]+[\\w0-9&&[^_]]"

.field private static VARIABLE_NAME_MATCH_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final VARIABLE_NAME_MID_EXPRESSION:Ljava/lang/String; = "[\\w0-9]+"

.field private static final VARIABLE_NAME_START_EXPRESSION:Ljava/lang/String; = "[\\w&&[^_]]"

.field public static final VARIABLE_PREFIX:Ljava/lang/String; = "%"

.field private static lastRandomsSeen:[I

.field private static randomInsertPointer:I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static bridge synthetic -$$Nest$smaddStringArrayToBundleAsString([Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->addStringArrayToBundleAsString([Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetStringArrayFromBundleString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getStringArrayFromBundleString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhostSupports(Landroid/os/Bundle;I)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->hostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRelevantVariableList(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.RELEVANT_VARIABLES"

    .line 160
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private static addStringArrayToBundleAsString([Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_3

    .line 349
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    const-string v4, " "

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ignoring bad keyName containing space: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskerPlugin"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    .line 355
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static addVariableBundle(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "net.dinglisch.android.tasker.extras.VARIABLES"

    .line 230
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static getBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 264
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, ": "

    const-string v1, "TaskerPlugin"

    if-nez p0, :cond_0

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": null value"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p2, :cond_2

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": expected "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method private static getExtraValueSafe(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPackageVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 300
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 302
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "TaskerPlugin"

    const-string p1, "getPackageVersionCode: exception getting package info"

    .line 304
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static getPositiveNonRepeatingRandomInteger()I
    .locals 7

    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin;->sr:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin;->sr:Ljava/security/SecureRandom;

    const/16 v0, 0x64

    new-array v0, v0, [I

    sput-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin;->lastRandomsSeen:[I

    move v0, v1

    :goto_0
    sget-object v3, Lnet/dinglisch/android/tasker/TaskerPlugin;->lastRandomsSeen:[I

    .line 379
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 380
    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin;->sr:Ljava/security/SecureRandom;

    const v3, 0x7fffffff

    .line 386
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    sget-object v3, Lnet/dinglisch/android/tasker/TaskerPlugin;->lastRandomsSeen:[I

    .line 389
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    if-ne v6, v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eq v0, v2, :cond_0

    sget-object v1, Lnet/dinglisch/android/tasker/TaskerPlugin;->lastRandomsSeen:[I

    sget v2, Lnet/dinglisch/android/tasker/TaskerPlugin;->randomInsertPointer:I

    .line 399
    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 400
    array-length v1, v1

    rem-int/2addr v2, v1

    sput v2, Lnet/dinglisch/android/tasker/TaskerPlugin;->randomInsertPointer:I

    return v0
.end method

.method public static getRelevantVariableList(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 3

    .line 203
    const-class v0, [Ljava/lang/String;

    const-string v1, "getRelevantVariableList"

    const-string v2, "net.dinglisch.android.tasker.RELEVANT_VARIABLES"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static getStringArrayFromBundleString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 333
    const-class v0, Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p1, " "

    .line 338
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static hostSupports(Landroid/os/Bundle;I)Z
    .locals 3

    .line 287
    const-class v0, Ljava/lang/Integer;

    const-string v1, "hostSupports"

    const-string v2, "net.dinglisch.android.tasker.extras.HOST_CAPABILITIES"

    invoke-static {p0, v2, v0, v1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getBundleValueSafe(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hostSupportsKeyEncoding(Landroid/os/Bundle;Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;)Z
    .locals 1

    .line 139
    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$1;->$SwitchMap$net$dinglisch$android$tasker$TaskerPlugin$Encoding:[I

    invoke-virtual {p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p1, 0x80

    .line 141
    invoke-static {p0, p1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->hostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public static hostSupportsRelevantVariables(Landroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    .line 148
    invoke-static {p0, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->hostSupports(Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public static setKeyEncoding(Landroid/os/Bundle;[Ljava/lang/String;Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;)V
    .locals 1

    .line 250
    sget-object v0, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->JSON:Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;

    invoke-virtual {v0, p2}, Lnet/dinglisch/android/tasker/TaskerPlugin$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "net.dinglisch.android.tasker.JSON_ENCODED_KEYS"

    const-string v0, "setValueEncoding"

    .line 251
    invoke-static {p1, p0, p2, v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->addStringArrayToBundleAsString([Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "unknown encoding: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskerPlugin"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static variableNameIsLocal(Ljava/lang/String;)Z
    .locals 6

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 317
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 319
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    .line 321
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne v3, p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public static variableNameValid(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "TaskerPlugin"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "variableNameValid: null name"

    .line 175
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/dinglisch/android/tasker/TaskerPlugin;->VARIABLE_NAME_MATCH_PATTERN:Ljava/util/regex/Pattern;

    if-nez v2, :cond_1

    const-string v2, "%+[\\w&&[^_]][\\w0-9]+[\\w0-9&&[^_]]"

    .line 178
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lnet/dinglisch/android/tasker/TaskerPlugin;->VARIABLE_NAME_MATCH_PATTERN:Ljava/util/regex/Pattern;

    :cond_1
    sget-object v2, Lnet/dinglisch/android/tasker/TaskerPlugin;->VARIABLE_NAME_MATCH_PATTERN:Ljava/util/regex/Pattern;

    .line 180
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    invoke-static {p0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->variableNameIsLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 185
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "variableNameValid: name not local: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "variableNameValid: invalid name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method
