.class Lcom/reactnativecommunity/checkbox/ReactCheckBoxManager$1;
.super Ljava/lang/Object;
.source "ReactCheckBoxManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/checkbox/ReactCheckBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getReactContext(Landroid/widget/CompoundButton;)Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    instance-of v1, v0, Landroidx/appcompat/widget/TintContextWrapper;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroidx/appcompat/widget/TintContextWrapper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/checkbox/ReactCheckBoxManager$1;->getReactContext(Landroid/widget/CompoundButton;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 44
    :try_start_0
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 45
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/reactnativecommunity/checkbox/ReactCheckBoxEvent;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-direct {v1, p1, p2}, Lcom/reactnativecommunity/checkbox/ReactCheckBoxEvent;-><init>(IZ)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "ReactCheckBoxManager"

    const-string v0, "Error dispatching checkbox event"

    .line 49
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
