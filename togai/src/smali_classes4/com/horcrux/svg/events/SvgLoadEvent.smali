.class public Lcom/horcrux/svg/events/SvgLoadEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "SvgLoadEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/horcrux/svg/events/SvgLoadEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topLoad"


# instance fields
.field private final height:F

.field private final uri:Ljava/lang/String;

.field private final width:F


# direct methods
.method public constructor <init>(IILcom/facebook/react/bridge/ReactContext;Ljava/lang/String;FF)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 25
    new-instance p1, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-direct {p1, p3, p4}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/events/SvgLoadEvent;->uri:Ljava/lang/String;

    iput p5, p0, Lcom/horcrux/svg/events/SvgLoadEvent;->width:F

    iput p6, p0, Lcom/horcrux/svg/events/SvgLoadEvent;->height:F

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/horcrux/svg/events/SvgLoadEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/horcrux/svg/events/SvgLoadEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/horcrux/svg/events/SvgLoadEvent;->getEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 47
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iget v1, p0, Lcom/horcrux/svg/events/SvgLoadEvent;->width:F

    float-to-double v1, v1

    const-string v3, "width"

    .line 48
    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    iget v1, p0, Lcom/horcrux/svg/events/SvgLoadEvent;->height:F

    float-to-double v1, v1

    const-string v3, "height"

    .line 49
    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v1, "uri"

    iget-object v2, p0, Lcom/horcrux/svg/events/SvgLoadEvent;->uri:Ljava/lang/String;

    .line 50
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "source"

    .line 53
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v1
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topLoad"

    return-object v0
.end method
