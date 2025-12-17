.class Lcom/auth0/android/provider/AuthorizeResult;
.super Ljava/lang/Object;
.source "AuthorizeResult.java"


# static fields
.field private static final MISSING_REQUEST_CODE:I = -0x64

.field private static final TAG:Ljava/lang/String; = "AuthorizeResult"


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final requestCode:I

.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/auth0/android/provider/AuthorizeResult;->intent:Landroid/content/Intent;

    iput p1, p0, Lcom/auth0/android/provider/AuthorizeResult;->requestCode:I

    iput p2, p0, Lcom/auth0/android/provider/AuthorizeResult;->resultCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/AuthorizeResult;->intent:Landroid/content/Intent;

    const/16 p1, -0x64

    iput p1, p0, Lcom/auth0/android/provider/AuthorizeResult;->requestCode:I

    .line 39
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthorizeResult;->getIntentData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/auth0/android/provider/AuthorizeResult;->resultCode:I

    return-void
.end method


# virtual methods
.method public getIntentData()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/AuthorizeResult;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget v0, p0, Lcom/auth0/android/provider/AuthorizeResult;->resultCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/auth0/android/provider/AuthorizeResult;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthorizeResult;->getIntentData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedRequestCode"
        }
    .end annotation

    iget v0, p0, Lcom/auth0/android/provider/AuthorizeResult;->requestCode:I

    const/16 v1, -0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    .line 50
    :goto_1
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthorizeResult;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/auth0/android/provider/AuthorizeResult;->resultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    return v3

    :cond_4
    sget-object p1, Lcom/auth0/android/provider/AuthorizeResult;->TAG:Ljava/lang/String;

    const-string v0, "Result is invalid: Either the received Intent is null or the Request Code doesn\'t match the expected one."

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
