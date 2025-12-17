.class public Lnet/openid/appauth/AuthorizationManagementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AuthorizationManagementActivity.java"


# static fields
.field static final KEY_AUTHORIZATION_STARTED:Ljava/lang/String; = "authStarted"

.field static final KEY_AUTH_INTENT:Ljava/lang/String; = "authIntent"

.field static final KEY_AUTH_REQUEST:Ljava/lang/String; = "authRequest"

.field static final KEY_AUTH_REQUEST_TYPE:Ljava/lang/String; = "authRequestType"

.field static final KEY_CANCEL_INTENT:Ljava/lang/String; = "cancelIntent"

.field static final KEY_COMPLETE_INTENT:Ljava/lang/String; = "completeIntent"


# instance fields
.field private mAuthIntent:Landroid/content/Intent;

.field private mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

.field private mAuthorizationStarted:Z

.field private mCancelIntent:Landroid/app/PendingIntent;

.field private mCompleteIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    return-void
.end method

.method private static createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/openid/appauth/AuthorizationManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createResponseHandlingIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "responseUri"
        }
    .end annotation

    .line 196
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 198
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static createStartForResultIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationManagementRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "request",
            "authIntent"
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-static {p0, p1, p2, v0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->createStartIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationManagementRequest;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createStartIntent(Landroid/content/Context;Lnet/openid/appauth/AuthorizationManagementRequest;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "request",
            "authIntent",
            "completeIntent",
            "cancelIntent"
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->createBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "authIntent"

    .line 168
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "authRequest"

    .line 169
    invoke-interface {p1}, Lnet/openid/appauth/AuthorizationManagementRequest;->jsonSerializeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "authRequestType"

    .line 170
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationManagementUtil;->requestTypeFor(Lnet/openid/appauth/AuthorizationManagementRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "completeIntent"

    .line 171
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "cancelIntent"

    .line 172
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method private extractResponseData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseUri"
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationException;->fromOAuthRedirect(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 347
    invoke-static {v0, p1}, Lnet/openid/appauth/AuthorizationManagementUtil;->responseWith(Lnet/openid/appauth/AuthorizationManagementRequest;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationManagementResponse;

    move-result-object p1

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 349
    invoke-interface {v0}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationManagementResponse;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 350
    invoke-interface {v0}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    invoke-interface {v0}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationManagementResponse;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    :cond_2
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationManagementResponse;->getState()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 356
    invoke-interface {v0}, Lnet/openid/appauth/AuthorizationManagementRequest;->getState()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "State returned in authorization response (%s) does not match state from request (%s) - discarding response"

    .line 353
    invoke-static {v0, p1}, Lnet/openid/appauth/internal/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    sget-object p1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 361
    :cond_3
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationManagementResponse;->toIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private extractState(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "No stored state - unable to handle response"

    new-array v0, v0, [Ljava/lang/Object;

    .line 307
    invoke-static {p1, v0}, Lnet/openid/appauth/internal/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "authIntent"

    .line 312
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    const-string v1, "authStarted"

    .line 313
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    const-string v1, "completeIntent"

    .line 314
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    const-string v1, "cancelIntent"

    .line 315
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    :try_start_0
    const-string v1, "authRequest"

    const/4 v2, 0x0

    .line 317
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "authRequestType"

    .line 318
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 320
    invoke-static {v1, p1}, Lnet/openid/appauth/AuthorizationManagementUtil;->requestFrom(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationManagementRequest;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 323
    sget-object v1, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    .line 325
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 323
    invoke-direct {p0, p1, v1, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private handleAuthorizationCanceled()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Authorization flow canceled by user"

    .line 286
    invoke-static {v2, v1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    sget-object v1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 292
    invoke-direct {p0, v2, v1, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    return-void
.end method

.method private handleAuthorizationComplete()V
    .locals 3

    .line 274
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractResponseData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to extract OAuth2 response from redirect"

    .line 277
    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 280
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    const/4 v2, -0x1

    .line 282
    invoke-direct {p0, v0, v1, v2}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    return-void
.end method

.method private handleBrowserNotFound()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Authorization flow canceled due to missing browser"

    .line 296
    invoke-static {v2, v1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    sget-object v1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->PROGRAM_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 302
    invoke-direct {p0, v2, v1, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V

    return-void
.end method

.method private sendResult(Landroid/app/PendingIntent;Landroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "cancelData",
            "resultCode"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 333
    :try_start_0
    invoke-virtual {p1, p0, p3, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to send cancel intent"

    .line 335
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/openid/appauth/internal/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0, p3, p2}, Lnet/openid/appauth/AuthorizationManagementActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 208
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->extractState(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 257
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 218
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->handleBrowserNotFound()V

    .line 232
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->handleAuthorizationComplete()V

    goto :goto_1

    .line 250
    :cond_1
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->handleAuthorizationCanceled()V

    .line 252
    :goto_1
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 263
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "authStarted"

    iget-boolean v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthorizationStarted:Z

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "authIntent"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthIntent:Landroid/content/Intent;

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 266
    invoke-interface {v0}, Lnet/openid/appauth/AuthorizationManagementRequest;->jsonSerializeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mAuthRequest:Lnet/openid/appauth/AuthorizationManagementRequest;

    .line 268
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationManagementUtil;->requestTypeFor(Lnet/openid/appauth/AuthorizationManagementRequest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authRequestType"

    .line 267
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "completeIntent"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCompleteIntent:Landroid/app/PendingIntent;

    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "cancelIntent"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->mCancelIntent:Landroid/app/PendingIntent;

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
