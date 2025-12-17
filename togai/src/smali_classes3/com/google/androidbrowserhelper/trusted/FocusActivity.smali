.class public Lcom/google/androidbrowserhelper/trusted/FocusActivity;
.super Landroid/app/Activity;
.source "FocusActivity.java"


# static fields
.field private static final EXTRA_FOCUS_INTENT:Ljava/lang/String; = "androidx.browser.customtabs.extra.FOCUS_INTENT"

.field private static mActivityExistsCached:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static addToIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/androidbrowserhelper/trusted/FocusActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/google/androidbrowserhelper/trusted/FocusActivity;->mActivityExistsCached:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/androidbrowserhelper/trusted/FocusActivity;->mActivityExistsCached:Ljava/lang/Boolean;

    .line 36
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lcom/google/androidbrowserhelper/trusted/FocusActivity;->mActivityExistsCached:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/high16 v1, 0x10000000

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.FOCUS_INTENT"

    const/high16 v3, 0x4000000

    .line 48
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 47
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/FocusActivity;->finish()V

    return-void
.end method
