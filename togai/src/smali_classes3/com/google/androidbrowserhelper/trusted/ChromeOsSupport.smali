.class public Lcom/google/androidbrowserhelper/trusted/ChromeOsSupport;
.super Ljava/lang/Object;
.source "ChromeOsSupport.java"


# static fields
.field public static final ARC_FEATURE:Ljava/lang/String; = "org.chromium.arc"

.field public static final ARC_PAYMENT_APP:Ljava/lang/String; = "org.chromium.arc.payment_app"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunningOnArc(Landroid/content/pm/PackageManager;)Z
    .locals 1

    const-string v0, "org.chromium.arc"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
