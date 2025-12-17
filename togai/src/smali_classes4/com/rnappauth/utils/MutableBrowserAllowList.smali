.class public Lcom/rnappauth/utils/MutableBrowserAllowList;
.super Ljava/lang/Object;
.source "MutableBrowserAllowList.java"

# interfaces
.implements Lnet/openid/appauth/browser/BrowserMatcher;


# instance fields
.field private final mBrowserMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/openid/appauth/browser/BrowserMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rnappauth/utils/MutableBrowserAllowList;->mBrowserMatchers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lnet/openid/appauth/browser/BrowserMatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/rnappauth/utils/MutableBrowserAllowList;->mBrowserMatchers:Ljava/util/List;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z
    .locals 2

    iget-object v0, p0, Lcom/rnappauth/utils/MutableBrowserAllowList;->mBrowserMatchers:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/openid/appauth/browser/BrowserMatcher;

    .line 26
    invoke-interface {v1, p1}, Lnet/openid/appauth/browser/BrowserMatcher;->matches(Lnet/openid/appauth/browser/BrowserDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Lnet/openid/appauth/browser/BrowserMatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/rnappauth/utils/MutableBrowserAllowList;->mBrowserMatchers:Ljava/util/List;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
