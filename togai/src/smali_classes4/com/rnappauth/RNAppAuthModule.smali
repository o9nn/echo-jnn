.class public Lcom/rnappauth/RNAppAuthModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNAppAuthModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field public static final CUSTOM_TAB_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"


# instance fields
.field private additionalParametersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private authorizationRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientAuthMethod:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private codeVerifier:Ljava/lang/String;

.field private dangerouslyAllowInsecureHttpRequests:Z

.field private isPrefetched:Z

.field private final mServiceConfigurations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private promise:Lcom/facebook/react/bridge/Promise;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private registrationRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skipCodeExchange:Ljava/lang/Boolean;

.field private tokenRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useNonce:Ljava/lang/Boolean;

.field private usePKCE:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetpromise(Lcom/rnappauth/RNAppAuthModule;)Lcom/facebook/react/bridge/Promise;
    .locals 0

    iget-object p0, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisPrefetched(Lcom/rnappauth/RNAppAuthModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mauthorizeWithConfiguration(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/rnappauth/RNAppAuthModule;->authorizeWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendSessionWithConfiguration(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/rnappauth/RNAppAuthModule;->endSessionWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthorizationException(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rnappauth/RNAppAuthModule;->handleAuthorizationException(Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshWithConfiguration(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/rnappauth/RNAppAuthModule;->refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterWithConfiguration(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/rnappauth/RNAppAuthModule;->registerWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetServiceConfiguration(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rnappauth/RNAppAuthModule;->setServiceConfiguration(Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "basic"

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->clientAuthMethod:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->registrationRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 91
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 893
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 894
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private arrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;
    .locals 3

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 879
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x20

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 885
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private arrayToUriList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 904
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 905
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private authorizeWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Lnet/openid/appauth/AppAuthConfiguration;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 666
    invoke-direct {p0, p4}, Lcom/rnappauth/RNAppAuthModule;->arrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 670
    invoke-virtual {p0}, Lcom/rnappauth/RNAppAuthModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 672
    new-instance v3, Lnet/openid/appauth/AuthorizationRequest$Builder;

    const-string v4, "code"

    .line 676
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-direct {v3, p1, p3, v4, p5}, Lnet/openid/appauth/AuthorizationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p4, :cond_1

    .line 679
    invoke-virtual {v3, p4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    :cond_1
    if-eqz p8, :cond_8

    const-string p1, "display"

    .line 684
    invoke-interface {p8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 685
    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 686
    invoke-interface {p8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "login_hint"

    .line 688
    invoke-interface {p8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 689
    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setLoginHint(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 690
    invoke-interface {p8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "prompt"

    .line 692
    invoke-interface {p8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 693
    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 694
    invoke-interface {p8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p1, "state"

    .line 696
    invoke-interface {p8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 697
    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 698
    invoke-interface {p8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p1, "nonce"

    .line 701
    invoke-interface {p8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 702
    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setNonce(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 703
    invoke-interface {p8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p1, "ui_locales"

    .line 706
    invoke-interface {p8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 707
    invoke-interface {p8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setUiLocales(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 708
    invoke-interface {p8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_7
    invoke-virtual {v3, p8}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 715
    :cond_8
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 716
    invoke-virtual {v3, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    goto :goto_1

    .line 718
    :cond_9
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->generateRandomCodeVerifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->codeVerifier:Ljava/lang/String;

    .line 719
    invoke-virtual {v3, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 722
    :goto_1
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    .line 723
    invoke-virtual {v3, v0}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setNonce(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 726
    :cond_a
    invoke-virtual {v3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->build()Lnet/openid/appauth/AuthorizationRequest;

    move-result-object p1

    .line 729
    new-instance p3, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p3, v1, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/net/Uri;

    .line 731
    invoke-virtual {p3, p2}, Lnet/openid/appauth/AuthorizationService;->createCustomTabsIntentBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p2

    .line 732
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p2

    .line 734
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 735
    iget-object p4, p2, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string p5, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    const/4 p6, 0x1

    invoke-virtual {p4, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    :cond_b
    invoke-virtual {p3, p1, p2}, Lnet/openid/appauth/AuthorizationService;->getAuthorizationRequestIntent(Lnet/openid/appauth/AuthorizationRequest;Landroidx/browser/customtabs/CustomTabsIntent;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x34

    .line 740
    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 970
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, ".well-known"

    .line 971
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "openid-configuration"

    .line 972
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 973
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/AppAuthConfiguration;
    .locals 1

    .line 917
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration$Builder;

    invoke-direct {v0}, Lnet/openid/appauth/AppAuthConfiguration$Builder;-><init>()V

    .line 918
    invoke-direct {p0, p3}, Lcom/rnappauth/RNAppAuthModule;->getBrowserAllowList(Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/browser/BrowserMatcher;

    move-result-object p3

    invoke-virtual {v0, p3}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->setBrowserMatcher(Lnet/openid/appauth/browser/BrowserMatcher;)Lnet/openid/appauth/AppAuthConfiguration$Builder;

    move-result-object p3

    .line 919
    invoke-virtual {p3, p1}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->setConnectionBuilder(Lnet/openid/appauth/connectivity/ConnectionBuilder;)Lnet/openid/appauth/AppAuthConfiguration$Builder;

    move-result-object p1

    .line 920
    invoke-virtual {p1, p2}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->setSkipIssuerHttpsCheck(Ljava/lang/Boolean;)Lnet/openid/appauth/AppAuthConfiguration$Builder;

    move-result-object p1

    .line 921
    invoke-virtual {p1}, Lnet/openid/appauth/AppAuthConfiguration$Builder;->build()Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "authorizationEndpoint"

    .line 978
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "tokenEndpoint"

    .line 982
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 986
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 987
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "registrationEndpoint"

    .line 990
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 991
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v3, "endSessionEndpoint"

    .line 993
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 994
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 997
    :cond_1
    new-instance p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    invoke-direct {p1, v0, v1, v2, v4}, Lnet/openid/appauth/AuthorizationServiceConfiguration;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object p1

    .line 983
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "serviceConfiguration passed without a tokenEndpoint"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 979
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "serviceConfiguration passed without an authorizationEndpoint"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createConnectionBuilder(ZLjava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/connectivity/ConnectionBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 952
    sget-object p1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->INSTANCE:Lcom/rnappauth/utils/UnsafeConnectionBuilder;

    goto :goto_0

    .line 954
    :cond_0
    sget-object p1, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 957
    :goto_0
    new-instance v0, Lcom/rnappauth/utils/CustomConnectionBuilder;

    invoke-direct {v0, p1}, Lcom/rnappauth/utils/CustomConnectionBuilder;-><init>(Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    if-eqz p2, :cond_1

    .line 960
    invoke-virtual {v0, p2}, Lcom/rnappauth/utils/CustomConnectionBuilder;->setHeaders(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private createConnectionBuilder(ZLjava/util/Map;Ljava/lang/Double;)Lnet/openid/appauth/connectivity/ConnectionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Double;",
            ")",
            "Lnet/openid/appauth/connectivity/ConnectionBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 932
    sget-object p1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->INSTANCE:Lcom/rnappauth/utils/UnsafeConnectionBuilder;

    goto :goto_0

    .line 934
    :cond_0
    sget-object p1, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 937
    :goto_0
    new-instance v0, Lcom/rnappauth/utils/CustomConnectionBuilder;

    invoke-direct {v0, p1}, Lcom/rnappauth/utils/CustomConnectionBuilder;-><init>(Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    if-eqz p2, :cond_1

    .line 940
    invoke-virtual {v0, p2}, Lcom/rnappauth/utils/CustomConnectionBuilder;->setHeaders(Ljava/util/Map;)V

    .line 943
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/rnappauth/utils/CustomConnectionBuilder;->setConnectionTimeout(I)V

    return-object v0
.end method

.method private endSessionWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Lnet/openid/appauth/AppAuthConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 821
    invoke-virtual {p0}, Lcom/rnappauth/RNAppAuthModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 823
    new-instance v2, Lnet/openid/appauth/EndSessionRequest$Builder;

    invoke-direct {v2, p1}, Lnet/openid/appauth/EndSessionRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    .line 824
    invoke-virtual {v2, p3}, Lnet/openid/appauth/EndSessionRequest$Builder;->setIdTokenHint(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;

    move-result-object p1

    .line 825
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/openid/appauth/EndSessionRequest$Builder;->setPostLogoutRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/EndSessionRequest$Builder;

    move-result-object p1

    if-eqz p5, :cond_1

    const-string p3, "state"

    .line 828
    invoke-interface {p5, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 829
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Lnet/openid/appauth/EndSessionRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;

    .line 830
    invoke-interface {p5, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_0
    invoke-virtual {p1, p5}, Lnet/openid/appauth/EndSessionRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/EndSessionRequest$Builder;

    .line 835
    :cond_1
    invoke-virtual {p1}, Lnet/openid/appauth/EndSessionRequest$Builder;->build()Lnet/openid/appauth/EndSessionRequest;

    move-result-object p1

    .line 838
    new-instance p3, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p3, v0, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 839
    invoke-virtual {p3, p1}, Lnet/openid/appauth/AuthorizationService;->getEndSessionRequestIntent(Lnet/openid/appauth/EndSessionRequest;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x35

    .line 841
    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getBrowserAllowList(Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/browser/BrowserMatcher;
    .locals 6

    if-eqz p1, :cond_9

    .line 1053
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1057
    :cond_0
    new-instance v0, Lcom/rnappauth/utils/MutableBrowserAllowList;

    invoke-direct {v0}, Lcom/rnappauth/utils/MutableBrowserAllowList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1059
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1060
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 1066
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_1
    const-string v4, "firefoxCustomTab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_2
    const-string v4, "samsungCustomTab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "firefox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v4, "chrome"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_5
    const-string v4, "chromeCustomTab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move v5, v1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 1084
    :pswitch_0
    sget-object v3, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->SAMSUNG_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    invoke-virtual {v0, v3}, Lcom/rnappauth/utils/MutableBrowserAllowList;->add(Lnet/openid/appauth/browser/BrowserMatcher;)V

    goto :goto_2

    .line 1080
    :pswitch_1
    sget-object v3, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->FIREFOX_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    invoke-virtual {v0, v3}, Lcom/rnappauth/utils/MutableBrowserAllowList;->add(Lnet/openid/appauth/browser/BrowserMatcher;)V

    goto :goto_2

    .line 1088
    :pswitch_2
    sget-object v3, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->SAMSUNG_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    invoke-virtual {v0, v3}, Lcom/rnappauth/utils/MutableBrowserAllowList;->add(Lnet/openid/appauth/browser/BrowserMatcher;)V

    goto :goto_2

    .line 1076
    :pswitch_3
    sget-object v3, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->FIREFOX_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    invoke-virtual {v0, v3}, Lcom/rnappauth/utils/MutableBrowserAllowList;->add(Lnet/openid/appauth/browser/BrowserMatcher;)V

    goto :goto_2

    .line 1068
    :pswitch_4
    sget-object v3, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->CHROME_BROWSER:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    invoke-virtual {v0, v3}, Lcom/rnappauth/utils/MutableBrowserAllowList;->add(Lnet/openid/appauth/browser/BrowserMatcher;)V

    goto :goto_2

    .line 1072
    :pswitch_5
    sget-object v3, Lnet/openid/appauth/browser/VersionedBrowserMatcher;->CHROME_CUSTOM_TAB:Lnet/openid/appauth/browser/VersionedBrowserMatcher;

    invoke-virtual {v0, v3}, Lcom/rnappauth/utils/MutableBrowserAllowList;->add(Lnet/openid/appauth/browser/BrowserMatcher;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0

    .line 1054
    :cond_9
    :goto_3
    sget-object p1, Lnet/openid/appauth/browser/AnyBrowserMatcher;->INSTANCE:Lnet/openid/appauth/browser/AnyBrowserMatcher;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53d24ef6 -> :sswitch_5
        -0x51212d86 -> :sswitch_4
        -0x32a19d27 -> :sswitch_3
        0x5076f38a -> :sswitch_2
        0x63711b8b -> :sswitch_1
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getClientAuthentication(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/ClientAuthentication;
    .locals 1

    const-string v0, "post"

    .line 867
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 868
    new-instance p2, Lnet/openid/appauth/ClientSecretPost;

    invoke-direct {p2, p1}, Lnet/openid/appauth/ClientSecretPost;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 871
    :cond_0
    new-instance p2, Lnet/openid/appauth/ClientSecretBasic;

    invoke-direct {p2, p1}, Lnet/openid/appauth/ClientSecretBasic;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private getServiceConfiguration(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationServiceConfiguration;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1032
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    return-object p1
.end method

.method private handleAuthorizationException(Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 1038
    invoke-virtual {p2}, Lnet/openid/appauth/AuthorizationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p2, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    invoke-interface {p3, p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1041
    :cond_0
    iget-object v0, p2, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p2, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    :cond_1
    invoke-virtual {p2}, Lnet/openid/appauth/AuthorizationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private hasServiceConfiguration(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1025
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "register"

    .line 854
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 855
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->registrationRequestHeaders:Ljava/util/Map;

    :cond_1
    const-string v0, "authorize"

    .line 857
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_2

    .line 858
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    :cond_2
    const-string v0, "token"

    .line 860
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_3

    .line 861
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    :cond_3
    return-void
.end method

.method private refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Lnet/openid/appauth/AppAuthConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 767
    invoke-direct {p0, p5}, Lcom/rnappauth/RNAppAuthModule;->arrayToString(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 772
    new-instance v1, Lnet/openid/appauth/TokenRequest$Builder;

    invoke-direct {v1, p1, p4}, Lnet/openid/appauth/TokenRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1, p3}, Lnet/openid/appauth/TokenRequest$Builder;->setRefreshToken(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object p1

    .line 776
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/openid/appauth/TokenRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/TokenRequest$Builder;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 779
    invoke-virtual {p1, p5}, Lnet/openid/appauth/TokenRequest$Builder;->setScope(Ljava/lang/String;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 782
    :cond_1
    invoke-interface {p7}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 783
    invoke-virtual {p1, p7}, Lnet/openid/appauth/TokenRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest$Builder;

    .line 786
    :cond_2
    invoke-virtual {p1}, Lnet/openid/appauth/TokenRequest$Builder;->build()Lnet/openid/appauth/TokenRequest;

    move-result-object p1

    .line 788
    new-instance p3, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {p3, v0, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 790
    new-instance p2, Lcom/rnappauth/RNAppAuthModule$8;

    invoke-direct {p2, p0, p10}, Lcom/rnappauth/RNAppAuthModule$8;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;)V

    if-eqz p9, :cond_3

    .line 803
    invoke-direct {p0, p9, p8}, Lcom/rnappauth/RNAppAuthModule;->getClientAuthentication(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/ClientAuthentication;

    move-result-object p4

    .line 804
    invoke-virtual {p3, p1, p4, p2}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    goto :goto_1

    .line 807
    :cond_3
    invoke-virtual {p3, p1, p2}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    :goto_1
    return-void
.end method

.method private registerWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Lnet/openid/appauth/AppAuthConfiguration;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/react/bridge/Promise;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 608
    new-instance v1, Lnet/openid/appauth/AuthorizationService;

    invoke-direct {v1, v0, p2}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    .line 610
    new-instance p2, Lnet/openid/appauth/RegistrationRequest$Builder;

    .line 612
    invoke-direct {p0, p3}, Lcom/rnappauth/RNAppAuthModule;->arrayToUriList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lnet/openid/appauth/RegistrationRequest$Builder;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/util/List;)V

    .line 613
    invoke-virtual {p2, p8}, Lnet/openid/appauth/RegistrationRequest$Builder;->setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/RegistrationRequest$Builder;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 616
    invoke-direct {p0, p4}, Lcom/rnappauth/RNAppAuthModule;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/openid/appauth/RegistrationRequest$Builder;->setResponseTypeValues(Ljava/util/List;)Lnet/openid/appauth/RegistrationRequest$Builder;

    :cond_0
    if-eqz p5, :cond_1

    .line 620
    invoke-direct {p0, p5}, Lcom/rnappauth/RNAppAuthModule;->arrayToList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/openid/appauth/RegistrationRequest$Builder;->setGrantTypeValues(Ljava/util/List;)Lnet/openid/appauth/RegistrationRequest$Builder;

    :cond_1
    if-eqz p6, :cond_2

    .line 624
    invoke-virtual {p1, p6}, Lnet/openid/appauth/RegistrationRequest$Builder;->setSubjectType(Ljava/lang/String;)Lnet/openid/appauth/RegistrationRequest$Builder;

    :cond_2
    if-eqz p7, :cond_3

    .line 628
    invoke-virtual {p1, p7}, Lnet/openid/appauth/RegistrationRequest$Builder;->setTokenEndpointAuthenticationMethod(Ljava/lang/String;)Lnet/openid/appauth/RegistrationRequest$Builder;

    .line 631
    :cond_3
    invoke-virtual {p1}, Lnet/openid/appauth/RegistrationRequest$Builder;->build()Lnet/openid/appauth/RegistrationRequest;

    move-result-object p1

    .line 633
    new-instance p2, Lcom/rnappauth/RNAppAuthModule$7;

    invoke-direct {p2, p0, p9}, Lcom/rnappauth/RNAppAuthModule$7;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;)V

    .line 646
    invoke-virtual {v1, p1, p2}, Lnet/openid/appauth/AuthorizationService;->performRegistrationRequest(Lnet/openid/appauth/RegistrationRequest;Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;)V

    return-void
.end method

.method private setServiceConfiguration(Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->mServiceConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1048
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private warmChromeCustomTab(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1005
    new-instance v0, Lcom/rnappauth/RNAppAuthModule$9;

    invoke-direct {v0, p0, p2}, Lcom/rnappauth/RNAppAuthModule$9;-><init>(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;)V

    const-string p2, "com.android.chrome"

    .line 1021
    invoke-static {p1, p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 16
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p7

    move/from16 v1, p13

    move-object/from16 v2, p14

    move-object/from16 v11, p17

    .line 247
    invoke-direct {v13, v2}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object v2, v13, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    move-object/from16 v3, p9

    .line 248
    invoke-direct {v13, v1, v2, v3}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(ZLjava/util/Map;Ljava/lang/Double;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v14

    .line 251
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, p15

    .line 250
    invoke-direct {v13, v14, v2, v3}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v5

    .line 252
    invoke-static/range {p6 .. p6}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v12

    iput-object v11, v13, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    iput-boolean v1, v13, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Z

    iput-object v12, v13, Lcom/rnappauth/RNAppAuthModule;->additionalParametersMap:Ljava/util/Map;

    move-object/from16 v1, p4

    iput-object v1, v13, Lcom/rnappauth/RNAppAuthModule;->clientSecret:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v13, Lcom/rnappauth/RNAppAuthModule;->clientAuthMethod:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v13, Lcom/rnappauth/RNAppAuthModule;->skipCodeExchange:Ljava/lang/Boolean;

    move-object/from16 v9, p10

    iput-object v9, v13, Lcom/rnappauth/RNAppAuthModule;->useNonce:Ljava/lang/Boolean;

    move-object/from16 v10, p11

    iput-object v10, v13, Lcom/rnappauth/RNAppAuthModule;->usePKCE:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 266
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 289
    invoke-direct {v13, v0}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v15, Lcom/rnappauth/RNAppAuthModule$3;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p17

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object v11, v12

    move/from16 v12, p16

    invoke-direct/range {v1 .. v12}, Lcom/rnappauth/RNAppAuthModule$3;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/HashMap;Z)V

    .line 288
    invoke-static {v0, v15, v14}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_2

    .line 268
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->getServiceConfiguration(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    goto :goto_1

    .line 270
    :cond_2
    invoke-direct {v13, v0}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 280
    invoke-static/range {p16 .. p16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v3, v5

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v9, v12

    move-object v10, v0

    .line 271
    invoke-direct/range {v1 .. v10}, Lcom/rnappauth/RNAppAuthModule;->authorizeWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "authentication_failed"

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "browser_not_found"

    .line 282
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNAppAuth"

    return-object v0
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v9, p0

    move-object/from16 v0, p4

    move-object/from16 v7, p8

    const/4 v1, 0x0

    move/from16 v2, p6

    .line 427
    invoke-direct {p0, v2, v1}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(ZLjava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v10

    .line 429
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v2, p7

    .line 428
    invoke-direct {p0, v10, v1, v2}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v5

    .line 430
    invoke-static/range {p5 .. p5}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v8

    iput-object v7, v9, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-nez v0, :cond_1

    .line 434
    invoke-direct {p0, p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 453
    invoke-direct {p0, v0}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v11, Lcom/rnappauth/RNAppAuthModule$5;

    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/rnappauth/RNAppAuthModule$5;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 452
    invoke-static {v0, v11, v10}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_2

    .line 436
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-direct {p0, p1}, Lcom/rnappauth/RNAppAuthModule;->getServiceConfiguration(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    goto :goto_1

    .line 438
    :cond_2
    invoke-direct {p0, v0}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    :goto_1
    move-object v2, v0

    move-object v1, p0

    move-object v3, v5

    move-object v4, p2

    move-object v5, p3

    move-object v6, v8

    .line 439
    invoke-direct/range {v1 .. v6}, Lcom/rnappauth/RNAppAuthModule;->endSessionWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "end_session_failed"

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "browser_not_found"

    .line 446
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    const/16 p1, 0x34

    const-string p3, "Data intent is null"

    if-ne p2, p1, :cond_9

    const-string p1, "authentication_error"

    if-nez p4, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_0

    .line 492
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 497
    :cond_1
    invoke-static {p4}, Lnet/openid/appauth/AuthorizationResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object v0

    .line 498
    invoke-static {p4}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_2

    .line 501
    invoke-direct {p0, p1, v1, p2}, Lcom/rnappauth/RNAppAuthModule;->handleAuthorizationException(Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->skipCodeExchange:Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    .line 506
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->usePKCE:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 508
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->codeVerifier:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 509
    invoke-static {v0, p1}, Lcom/rnappauth/utils/TokenResponseFactory;->authorizationCodeResponseToMap(Lnet/openid/appauth/AuthorizationResponse;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    goto :goto_0

    .line 511
    :cond_4
    invoke-static {v0}, Lcom/rnappauth/utils/TokenResponseFactory;->authorizationResponseToMap(Lnet/openid/appauth/AuthorizationResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_5

    .line 515
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    iget-boolean v1, p0, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Z

    iget-object v2, p0, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    .line 523
    invoke-direct {p0, v1, v2}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(ZLjava/util/Map;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Z

    .line 524
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 522
    invoke-direct {p0, v1, v2, v3}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v1

    .line 528
    new-instance v2, Lnet/openid/appauth/AuthorizationService;

    iget-object v3, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v2, v3, v1}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;Lnet/openid/appauth/AppAuthConfiguration;)V

    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule;->additionalParametersMap:Ljava/util/Map;

    if-nez v1, :cond_7

    .line 532
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;

    move-result-object v1

    goto :goto_1

    .line 534
    :cond_7
    invoke-virtual {v0, v1}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest(Ljava/util/Map;)Lnet/openid/appauth/TokenRequest;

    move-result-object v1

    .line 537
    :goto_1
    new-instance v3, Lcom/rnappauth/RNAppAuthModule$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/rnappauth/RNAppAuthModule$6;-><init>(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationResponse;Lcom/facebook/react/bridge/Promise;)V

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->clientSecret:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule;->clientAuthMethod:Ljava/lang/String;

    .line 556
    invoke-direct {p0, p1, v0}, Lcom/rnappauth/RNAppAuthModule;->getClientAuthentication(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/ClientAuthentication;

    move-result-object p1

    .line 557
    invoke-virtual {v2, v1, p1, v3}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/ClientAuthentication;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    goto :goto_2

    .line 560
    :cond_8
    invoke-virtual {v2, v1, v3}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_9
    :goto_2
    const/16 p1, 0x35

    if-ne p2, p1, :cond_f

    const-string p1, "end_session_failed"

    if-nez p4, :cond_b

    :try_start_1
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_a

    .line 568
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 572
    :cond_b
    invoke-static {p4}, Lnet/openid/appauth/EndSessionResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/EndSessionResponse;

    move-result-object p2

    .line 573
    invoke-static {p4}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p3

    if-eqz p3, :cond_d

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_c

    .line 576
    invoke-direct {p0, p1, p3, p2}, Lcom/rnappauth/RNAppAuthModule;->handleAuthorizationException(Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V

    :cond_c
    return-void

    :cond_d
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    .line 581
    invoke-static {p2}, Lcom/rnappauth/utils/EndSessionResponseFactory;->endSessionResponseToMap(Lnet/openid/appauth/EndSessionResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 582
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule;->promise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_e

    const-string p3, "run_time_exception"

    .line 586
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 588
    :cond_e
    throw p1

    :cond_f
    :goto_4
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public prefetchConfiguration(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/ReadableMap;Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/rnappauth/RNAppAuthModule;->warmChromeCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-direct {p0, p8}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule;->authorizationRequestHeaders:Ljava/util/Map;

    .line 111
    invoke-direct {p0, p7, p1, p9}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(ZLjava/util/Map;Ljava/lang/Double;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object p1

    .line 113
    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-boolean p5, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    if-nez p5, :cond_2

    if-eqz p6, :cond_1

    .line 116
    invoke-direct {p0, p2}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 118
    :try_start_0
    invoke-direct {p0, p6}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/rnappauth/RNAppAuthModule;->setServiceConfiguration(Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    iput-boolean p4, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    .line 120
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "configuration_error"

    const-string p4, "Failed to convert serviceConfiguration"

    .line 122
    invoke-interface {p10, p2, p4, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, p2}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 125
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 127
    invoke-direct {p0, p4}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p4

    new-instance p5, Lcom/rnappauth/RNAppAuthModule$1;

    invoke-direct {p5, p0, p10, p2, p3}, Lcom/rnappauth/RNAppAuthModule$1;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 126
    invoke-static {p4, p5, p1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 149
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-boolean p1, p0, Lcom/rnappauth/RNAppAuthModule;->isPrefetched:Z

    .line 150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p10, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "service_configuration_fetch_error"

    const-string p3, "Failed to await fetch configuration"

    .line 152
    invoke-interface {p10, p2, p3, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Double;Ljava/lang/String;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 16
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p4

    move-object/from16 v1, p8

    move/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v12, p14

    .line 340
    invoke-direct {v13, v3}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object v3, v13, Lcom/rnappauth/RNAppAuthModule;->tokenRequestHeaders:Ljava/util/Map;

    move-object/from16 v4, p9

    .line 341
    invoke-direct {v13, v2, v3, v4}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(ZLjava/util/Map;Ljava/lang/Double;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v14

    .line 344
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v4, p13

    .line 343
    invoke-direct {v13, v14, v3, v4}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v5

    .line 345
    invoke-static/range {p7 .. p7}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v10

    if-eqz v0, :cond_0

    const-string v3, "client_secret"

    .line 348
    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-boolean v2, v13, Lcom/rnappauth/RNAppAuthModule;->dangerouslyAllowInsecureHttpRequests:Z

    iput-object v10, v13, Lcom/rnappauth/RNAppAuthModule;->additionalParametersMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 357
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 381
    invoke-direct {v13, v1}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    new-instance v11, Lcom/rnappauth/RNAppAuthModule$4;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p14

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p2

    move-object v12, v11

    move-object/from16 v11, p10

    move-object v0, v12

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/rnappauth/RNAppAuthModule$4;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {v15, v0, v14}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_2

    .line 359
    :cond_2
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->getServiceConfiguration(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_3
    invoke-direct {v13, v1}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    :goto_1
    move-object v2, v0

    move-object/from16 v1, p0

    move-object v3, v5

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object v8, v10

    move-object/from16 v9, p10

    move-object/from16 v10, p4

    move-object/from16 v11, p14

    .line 362
    invoke-direct/range {v1 .. v11}, Lcom/rnappauth/RNAppAuthModule;->refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "token_refresh_failed"

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "browser_not_found"

    .line 374
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Double;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 15
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p8

    move-object/from16 v1, p11

    .line 170
    invoke-direct {p0, v1}, Lcom/rnappauth/RNAppAuthModule;->parseHeaderMap(Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object v1, v12, Lcom/rnappauth/RNAppAuthModule;->registrationRequestHeaders:Ljava/util/Map;

    move-object/from16 v2, p9

    move/from16 v3, p10

    .line 171
    invoke-direct {p0, v3, v1, v2}, Lcom/rnappauth/RNAppAuthModule;->createConnectionBuilder(ZLjava/util/Map;Ljava/lang/Double;)Lnet/openid/appauth/connectivity/ConnectionBuilder;

    move-result-object v13

    .line 174
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, v13, v1, v2}, Lcom/rnappauth/RNAppAuthModule;->createAppAuthConfiguration(Lnet/openid/appauth/connectivity/ConnectionBuilder;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableArray;)Lnet/openid/appauth/AppAuthConfiguration;

    move-result-object v5

    .line 175
    invoke-static/range {p7 .. p7}, Lcom/rnappauth/utils/MapUtil;->readableMapToHashMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v11

    if-nez v0, :cond_1

    .line 179
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/rnappauth/RNAppAuthModule;->buildConfigurationUriFromIssuer(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v14, Lcom/rnappauth/RNAppAuthModule$2;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p12

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v11}, Lcom/rnappauth/RNAppAuthModule$2;-><init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 199
    invoke-static {v0, v14, v13}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fetchFromUrl(Landroid/net/Uri;Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;Lnet/openid/appauth/connectivity/ConnectionBuilder;)V

    goto :goto_2

    .line 181
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->hasServiceConfiguration(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-direct/range {p0 .. p1}, Lcom/rnappauth/RNAppAuthModule;->getServiceConfiguration(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    goto :goto_1

    .line 183
    :cond_2
    invoke-direct {p0, v0}, Lcom/rnappauth/RNAppAuthModule;->createAuthorizationServiceConfiguration(Lcom/facebook/react/bridge/ReadableMap;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v0

    :goto_1
    move-object v2, v0

    move-object v1, p0

    move-object v3, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v11

    move-object/from16 v10, p12

    .line 184
    invoke-direct/range {v1 .. v10}, Lcom/rnappauth/RNAppAuthModule;->registerWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "registration_failed"

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p12

    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
