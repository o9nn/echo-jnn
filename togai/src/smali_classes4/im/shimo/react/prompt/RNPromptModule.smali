.class public Lim/shimo/react/prompt/RNPromptModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPromptModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "PromptAndroid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;,
        Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
    }
.end annotation


# static fields
.field static final ACTION_BUTTON_CLICKED:Ljava/lang/String; = "buttonClicked"

.field static final ACTION_DISMISSED:Ljava/lang/String; = "dismissed"

.field static final CONSTANTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final FRAGMENT_TAG:Ljava/lang/String; = "im.shimo.react.prompt.RNPromptModule"

.field static final KEY_BUTTON_NEGATIVE:Ljava/lang/String; = "buttonNegative"

.field static final KEY_BUTTON_NEUTRAL:Ljava/lang/String; = "buttonNeutral"

.field static final KEY_BUTTON_POSITIVE:Ljava/lang/String; = "buttonPositive"

.field static final KEY_CANCELABLE:Ljava/lang/String; = "cancelable"

.field static final KEY_DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field static final KEY_ITEMS:Ljava/lang/String; = "items"

.field static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field static final KEY_PLACEHOLDER:Ljava/lang/String; = "placeholder"

.field static final KEY_STYLE:Ljava/lang/String; = "style"

.field static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final KEY_TYPE:Ljava/lang/String; = "type"

.field static final NAME:Ljava/lang/String; = "PromptAndroid"


# instance fields
.field private mIsInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "buttonClicked"

    const-string v1, "buttonClicked"

    const-string v2, "dismissed"

    const-string v3, "dismissed"

    const-string v4, "buttonPositive"

    const/4 v5, -0x1

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "buttonNegative"

    const/4 v7, -0x2

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "buttonNeutral"

    const/4 v9, -0x3

    .line 51
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 46
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lim/shimo/react/prompt/RNPromptModule;->CONSTANTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$000(Lim/shimo/react/prompt/RNPromptModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lim/shimo/react/prompt/RNPromptModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private getFragmentManagerHelper()Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 243
    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 247
    :cond_0
    new-instance v1, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;-><init>(Lim/shimo/react/prompt/RNPromptModule;Landroid/app/FragmentManager;)V

    return-object v1
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
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

    sget-object v0, Lim/shimo/react/prompt/RNPromptModule;->CONSTANTS:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PromptAndroid"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/shimo/react/prompt/RNPromptModule;->mIsInForeground:Z

    return-void
.end method

.method public onHostResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/shimo/react/prompt/RNPromptModule;->mIsInForeground:Z

    .line 83
    invoke-direct {p0}, Lim/shimo/react/prompt/RNPromptModule;->getFragmentManagerHelper()Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->showPendingAlert()V

    goto :goto_0

    .line 87
    :cond_0
    const-class v0, Lcom/facebook/react/modules/dialog/DialogModule;

    const-string v1, "onHostResume called but no FragmentManager found"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public promptWithArgs(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 94
    invoke-direct {p0}, Lim/shimo/react/prompt/RNPromptModule;->getFragmentManagerHelper()Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const-class p1, Lim/shimo/react/prompt/RNPromptModule;

    const-string p2, "Tried to show an alert while not attached to an Activity"

    .line 96
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 101
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "message"

    .line 104
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "buttonPositive"

    .line 110
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "button_positive"

    .line 111
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "buttonNegative"

    .line 113
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "button_negative"

    .line 114
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "buttonNeutral"

    .line 116
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "button_neutral"

    .line 117
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "items"

    .line 119
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 120
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 121
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 122
    :goto_0
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 123
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    :cond_7
    const-string v2, "cancelable"

    .line 127
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 128
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    const-string v2, "type"

    .line 130
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 131
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v2, "style"

    .line 133
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 134
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "defaultValue"

    .line 136
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 137
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v2, "placeholder"

    .line 139
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 140
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule;->mIsInForeground:Z

    .line 142
    invoke-virtual {v0, p1, v1, p2}, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->showNewAlert(ZLandroid/os/Bundle;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method
