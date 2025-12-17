.class public Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;
.super Ljava/lang/Object;
.source "SharedPreferencesTokenStore.java"

# interfaces
.implements Landroidx/browser/trusted/TokenStore;


# static fields
.field private static final KEY_TOKEN:Ljava/lang/String; = "SharedPreferencesTokenStore.TOKEN"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public load()Landroidx/browser/trusted/Token;
    .locals 3

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/PrefUtils;->getAppSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SharedPreferencesTokenStore.TOKEN"

    const/4 v2, 0x0

    .line 80
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x3

    .line 86
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroidx/browser/trusted/Token;->deserialize([B)Landroidx/browser/trusted/Token;

    move-result-object v0

    return-object v0
.end method

.method public setVerifiedProvider(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 91
    invoke-static {p1, p2}, Landroidx/browser/trusted/Token;->create(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroidx/browser/trusted/Token;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;->store(Landroidx/browser/trusted/Token;)V

    return-void
.end method

.method public store(Landroidx/browser/trusted/Token;)V
    .locals 3

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/SharedPreferencesTokenStore;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v0}, Lcom/google/androidbrowserhelper/trusted/PrefUtils;->getAppSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SharedPreferencesTokenStore.TOKEN"

    if-nez p1, :cond_0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroidx/browser/trusted/Token;->serialize()[B

    move-result-object p1

    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
