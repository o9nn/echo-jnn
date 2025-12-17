.class public Lcom/google/androidbrowserhelper/trusted/PrefUtils;
.super Ljava/lang/Object;
.source "PrefUtils.java"


# static fields
.field private static final KEY_HAS_REQUESTED_NOTIFICATION_PERMISSION:Ljava/lang/String; = "HAS_REQUESTED_NOTIFICATION_PERMISSION"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.google.androidbrowserhelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.google.androidbrowserhelper"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static hasRequestedNotificationPermission(Landroid/content/Context;)Z
    .locals 2

    .line 39
    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/PrefUtils;->getAppSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "HAS_REQUESTED_NOTIFICATION_PERMISSION"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setHasRequestedNotificationPermission(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/PrefUtils;->getAppSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "HAS_REQUESTED_NOTIFICATION_PERMISSION"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
