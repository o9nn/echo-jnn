.class public Lcom/reactnativecommunity/picker/PickerFocusEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "PickerFocusEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/reactnativecommunity/picker/PickerFocusEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topFocus"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/PickerFocusEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/PickerFocusEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/PickerFocusEvent;->getEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 35
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "target"

    .line 36
    invoke-virtual {p0}, Lcom/reactnativecommunity/picker/PickerFocusEvent;->getViewTag()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topFocus"

    return-object v0
.end method
