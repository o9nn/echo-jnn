.class public Lcom/auth0/react/A0Auth0Module;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "A0Auth0Module.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field private static final ERROR_CODE:Ljava/lang/String; = "a0.invalid_state.credential_manager_exception"

.field private static final LOCAL_AUTH_REQUEST_CODE:I = 0x96

.field public static final UNKNOWN_ERROR_RESULT_CODE:I = 0x57d


# instance fields
.field private auth0:Lcom/auth0/android/Auth0;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

.field private webAuthPromise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public static synthetic $r8$lambda$xE0B42B0Zr-BKGNB6qJdiAbnxLM(Lcom/auth0/react/A0Auth0Module;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/auth0/react/A0Auth0Module;->lambda$enableLocalAuthentication$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwebAuthPromise(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/react/A0Auth0Module;->webAuthPromise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleError(Lcom/auth0/react/A0Auth0Module;Lcom/auth0/android/authentication/AuthenticationException;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/auth0/react/A0Auth0Module;->handleError(Lcom/auth0/android/authentication/AuthenticationException;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p1, p0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 51
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private handleError(Lcom/auth0/android/authentication/AuthenticationException;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    .line 226
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->isBrowserAppNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a0.browser_not_available"

    const-string v1, "No Browser application is installed."

    .line 227
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "a0.session.user_cancelled"

    const-string v1, "User cancelled the Auth"

    .line 231
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "a0.network_error"

    const-string v1, "Network error"

    .line 235
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->isIdTokenValidationError()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "a0.session.invalid_idtoken"

    const-string v1, "Error validating ID Token"

    .line 239
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 242
    :cond_3
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, ""

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->getCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CAUSE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$enableLocalAuthentication$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    const/16 v1, 0x96

    .line 112
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->requireAuthentication(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/auth0/android/authentication/storage/CredentialsManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "a0.invalid_state.credential_manager_exception"

    .line 115
    invoke-virtual {p1}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2, p3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearCredentials(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    .line 122
    invoke-virtual {v0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->clearCredentials()V

    const/4 v0, 0x1

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public enableLocalAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 105
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "a0.invalid_state.credential_manager_exception"

    const-string p2, "No current activity present"

    .line 107
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    new-instance v7, Lcom/auth0/react/A0Auth0Module$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/auth0/react/A0Auth0Module$$ExternalSyntheticLambda0;-><init>(Lcom/auth0/react/A0Auth0Module;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 134
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "bundleIdentifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCredentials(Ljava/lang/String;DLcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-interface {p4}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    double-to-int v2, p2

    .line 79
    new-instance v5, Lcom/auth0/react/A0Auth0Module$1;

    invoke-direct {v5, p0, p6}, Lcom/auth0/react/A0Auth0Module$1;-><init>(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V

    move-object v1, p1

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "A0Auth0"

    return-object v0
.end method

.method public hasValidAuth0Instance(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->auth0:Lcom/auth0/android/Auth0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public hasValidCredentials(DLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    double-to-long p1, p1

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->hasValidCredentials(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public initializeAuth0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 56
    new-instance v0, Lcom/auth0/android/Auth0;

    invoke-direct {v0, p1, p2}, Lcom/auth0/android/Auth0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/auth0/react/A0Auth0Module;->auth0:Lcom/auth0/android/Auth0;

    .line 57
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationAPIClient;

    iget-object p2, p0, Lcom/auth0/react/A0Auth0Module;->auth0:Lcom/auth0/android/Auth0;

    invoke-direct {p1, p2}, Lcom/auth0/android/authentication/AuthenticationAPIClient;-><init>(Lcom/auth0/android/Auth0;)V

    .line 58
    new-instance p2, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/auth0/android/authentication/storage/SharedPreferencesStorage;

    iget-object v2, p0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v1, v2}, Lcom/auth0/android/authentication/storage/SharedPreferencesStorage;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0, p1, v1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;-><init>(Landroid/content/Context;Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;)V

    iput-object p2, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/16 p1, 0x96

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    .line 249
    invoke-virtual {p1, p2, p3}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->checkAuthenticationResult(II)Z

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/auth0/react/A0Auth0Module;->webAuthPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz p1, :cond_0

    const-string v0, "a0.session.browser_terminated"

    const-string v1, "The browser window was closed by a new instance of the application"

    .line 256
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/auth0/react/A0Auth0Module;->webAuthPromise:Lcom/facebook/react/bridge/Promise;

    :cond_0
    return-void
.end method

.method public saveCredentials(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->secureCredentialsManager:Lcom/auth0/android/authentication/storage/SecureCredentialsManager;

    .line 96
    invoke-static {p1}, Lcom/auth0/react/CredentialsParser;->fromMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/auth0/android/result/Credentials;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->saveCredentials(Lcom/auth0/android/result/Credentials;)V

    const/4 p1, 0x1

    .line 97
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/auth0/android/authentication/storage/CredentialsManagerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "a0.invalid_state.credential_manager_exception"

    .line 99
    invoke-virtual {p1}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public webAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 16
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p15

    iput-object v11, v0, Lcom/auth0/react/A0Auth0Module;->webAuthPromise:Lcom/facebook/react/bridge/Promise;

    .line 147
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-interface/range {p14 .. p14}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 150
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v13, v0, Lcom/auth0/react/A0Auth0Module;->auth0:Lcom/auth0/android/Auth0;

    .line 153
    invoke-static {v13}, Lcom/auth0/android/provider/WebAuthProvider;->login(Lcom/auth0/android/Auth0;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    move-result-object v13

    move-object/from16 v14, p1

    .line 154
    invoke-virtual {v13, v14}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withScheme(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    move-result-object v13

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v13, v2}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withState(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_2
    if-eqz v3, :cond_3

    .line 159
    invoke-virtual {v13, v3}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withNonce(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_3
    if-eqz v4, :cond_4

    .line 162
    invoke-virtual {v13, v4}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withAudience(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_4
    if-eqz v5, :cond_5

    .line 165
    invoke-virtual {v13, v5}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withScope(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_5
    if-eqz v6, :cond_6

    .line 168
    invoke-virtual {v13, v6}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withConnection(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_6
    if-eqz v7, :cond_7

    .line 171
    invoke-virtual {v13, v7}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withMaxAge(I)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_7
    if-eqz v8, :cond_8

    .line 174
    invoke-virtual {v13, v8}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withOrganization(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_8
    if-eqz v9, :cond_9

    .line 177
    invoke-virtual {v13, v9}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withInvitationUrl(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_9
    if-eqz v10, :cond_a

    .line 180
    invoke-virtual {v13, v10}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withIdTokenVerificationLeeway(I)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    :cond_a
    if-eqz v1, :cond_b

    .line 183
    invoke-virtual {v13, v1}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withRedirectUri(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    .line 185
    :cond_b
    invoke-virtual {v13, v12}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->withParameters(Ljava/util/Map;)Lcom/auth0/android/provider/WebAuthProvider$Builder;

    iget-object v1, v0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 186
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/auth0/react/A0Auth0Module$2;

    invoke-direct {v2, v0, v11}, Lcom/auth0/react/A0Auth0Module$2;-><init>(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v13, v1, v2}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->start(Landroid/content/Context;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public webAuthLogout(Ljava/lang/String;ZLjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module;->auth0:Lcom/auth0/android/Auth0;

    .line 204
    invoke-static {v0}, Lcom/auth0/android/provider/WebAuthProvider;->logout(Lcom/auth0/android/Auth0;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->withScheme(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->withFederated()Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;

    :cond_0
    if-eqz p3, :cond_1

    .line 210
    invoke-virtual {p1, p3}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->withReturnToUrl(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;

    :cond_1
    iget-object p2, p0, Lcom/auth0/react/A0Auth0Module;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 212
    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/auth0/react/A0Auth0Module$3;

    invoke-direct {p3, p0, p4}, Lcom/auth0/react/A0Auth0Module$3;-><init>(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, p2, p3}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->start(Landroid/content/Context;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method
