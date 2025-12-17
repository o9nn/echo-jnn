.class public Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;
.super Ljava/lang/Object;
.source "TwaSharedPreferencesManager.java"


# static fields
.field private static final KEY_PROVIDER_PACKAGE:Ljava/lang/String; = "KEY_PROVIDER_PACKAGE"

.field private static final PREFS_NAME:Ljava/lang/String; = "TrustedWebActivityLauncherPrefs"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TrustedWebActivityLauncherPrefs"

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public readLastLaunchedProviderPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "KEY_PROVIDER_PACKAGE"

    const/4 v2, 0x0

    .line 32
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeLastLaunchedProviderPackageName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/TwaSharedPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_PROVIDER_PACKAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
