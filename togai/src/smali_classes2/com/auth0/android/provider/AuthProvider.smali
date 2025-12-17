.class public abstract Lcom/auth0/android/provider/AuthProvider;
.super Ljava/lang/Object;
.source "AuthProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthProvider"


# instance fields
.field private authenticationRequestCode:I

.field private callback:Lcom/auth0/android/provider/AuthCallback;

.field private final handler:Lcom/auth0/android/provider/PermissionHandler;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/auth0/android/provider/PermissionHandler;

    invoke-direct {v0}, Lcom/auth0/android/provider/PermissionHandler;-><init>()V

    invoke-direct {p0, v0}, Lcom/auth0/android/provider/AuthProvider;-><init>(Lcom/auth0/android/provider/PermissionHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/auth0/android/provider/PermissionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/AuthProvider;->handler:Lcom/auth0/android/provider/PermissionHandler;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/AuthProvider;->parameters:Ljava/util/Map;

    return-void
.end method

.method private checkPermissions(Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthProvider;->getRequiredAndroidPermissions()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/provider/AuthProvider;->handler:Lcom/auth0/android/provider/PermissionHandler;

    .line 167
    invoke-virtual {v1, p1, v0}, Lcom/auth0/android/provider/PermissionHandler;->areAllPermissionsGranted(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private requestPermissions(Landroid/app/Activity;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthProvider;->getRequiredAndroidPermissions()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/provider/AuthProvider;->handler:Lcom/auth0/android/provider/PermissionHandler;

    .line 181
    invoke-virtual {v1, p1, v0, p2}, Lcom/auth0/android/provider/PermissionHandler;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract authorize(IILandroid/content/Intent;)Z
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
.end method

.method public authorize(Landroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public clearSession()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/auth0/android/provider/AuthProvider;->callback:Lcom/auth0/android/provider/AuthCallback;

    return-void
.end method

.method protected getCallback()Lcom/auth0/android/provider/AuthCallback;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/AuthProvider;->callback:Lcom/auth0/android/provider/AuthCallback;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/AuthProvider;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method getPermissionHandler()Lcom/auth0/android/provider/PermissionHandler;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/AuthProvider;->handler:Lcom/auth0/android/provider/PermissionHandler;

    return-object v0
.end method

.method public abstract getRequiredAndroidPermissions()[Ljava/lang/String;
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/AuthProvider;->handler:Lcom/auth0/android/provider/PermissionHandler;

    .line 200
    invoke-virtual {v0, p2, p3, p4}, Lcom/auth0/android/provider/PermissionHandler;->parseRequestResult(I[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p2

    .line 202
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p2, Lcom/auth0/android/provider/AuthProvider;->TAG:Ljava/lang/String;

    const-string p3, "All permissions were granted!"

    .line 203
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/auth0/android/provider/AuthProvider;->authenticationRequestCode:I

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/provider/AuthProvider;->requestAuth(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/auth0/android/provider/AuthProvider;->callback:Lcom/auth0/android/provider/AuthCallback;

    if-eqz p3, :cond_1

    sget-object p3, Lcom/auth0/android/provider/AuthProvider;->TAG:Ljava/lang/String;

    const-string p4, "Permission Request failed. Some permissions were not granted!"

    .line 206
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget p3, Lcom/auth0/android/auth0/R$string;->com_auth0_webauth_permission_missing_description:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 208
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/auth0/android/auth0/R$string;->com_auth0_webauth_permission_missing_title:I

    .line 209
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 p3, 0x0

    .line 211
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/auth0/android/provider/AuthProvider;->callback:Lcom/auth0/android/provider/AuthCallback;

    .line 213
    invoke-interface {p2, p1}, Lcom/auth0/android/provider/AuthCallback;->onFailure(Landroid/app/Dialog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract requestAuth(Landroid/app/Activity;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode"
        }
    .end annotation
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/auth0/android/provider/AuthProvider;->parameters:Ljava/util/Map;

    return-void
.end method

.method public start(Landroid/app/Activity;Lcom/auth0/android/provider/AuthCallback;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "permissionRequestCode",
            "authenticationRequestCode"
        }
    .end annotation

    iput-object p2, p0, Lcom/auth0/android/provider/AuthProvider;->callback:Lcom/auth0/android/provider/AuthCallback;

    iput p4, p0, Lcom/auth0/android/provider/AuthProvider;->authenticationRequestCode:I

    .line 60
    invoke-direct {p0, p1}, Lcom/auth0/android/provider/AuthProvider;->checkPermissions(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/auth0/android/provider/AuthProvider;->TAG:Ljava/lang/String;

    const-string p3, "All permissions were already granted, the authentication flow is starting."

    .line 61
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, p1, p4}, Lcom/auth0/android/provider/AuthProvider;->requestAuth(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/auth0/android/provider/AuthProvider;->TAG:Ljava/lang/String;

    const-string p4, "Some permissions were not previously granted, requesting them now."

    .line 64
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/auth0/android/provider/AuthProvider;->requestPermissions(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
