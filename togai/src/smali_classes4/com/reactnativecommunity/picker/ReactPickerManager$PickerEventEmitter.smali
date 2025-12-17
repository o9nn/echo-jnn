.class Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;
.super Ljava/lang/Object;
.source "ReactPickerManager.java"

# interfaces
.implements Lcom/reactnativecommunity/picker/ReactPicker$OnSelectListener;
.implements Lcom/reactnativecommunity/picker/ReactPicker$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/picker/ReactPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickerEventEmitter"
.end annotation


# instance fields
.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final mReactPicker:Lcom/reactnativecommunity/picker/ReactPicker;


# direct methods
.method public constructor <init>(Lcom/reactnativecommunity/picker/ReactPicker;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mReactPicker:Lcom/reactnativecommunity/picker/ReactPicker;

    iput-object p2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 425
    new-instance v1, Lcom/reactnativecommunity/picker/PickerItemSelectEvent;

    iget-object v2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mReactPicker:Lcom/reactnativecommunity/picker/ReactPicker;

    .line 426
    invoke-virtual {v2}, Lcom/reactnativecommunity/picker/ReactPicker;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/reactnativecommunity/picker/PickerItemSelectEvent;-><init>(II)V

    .line 425
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onPickerBlur()V
    .locals 3

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 431
    new-instance v1, Lcom/reactnativecommunity/picker/PickerBlurEvent;

    iget-object v2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mReactPicker:Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {v2}, Lcom/reactnativecommunity/picker/ReactPicker;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/reactnativecommunity/picker/PickerBlurEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onPickerFocus()V
    .locals 3

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 436
    new-instance v1, Lcom/reactnativecommunity/picker/PickerFocusEvent;

    iget-object v2, p0, Lcom/reactnativecommunity/picker/ReactPickerManager$PickerEventEmitter;->mReactPicker:Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-virtual {v2}, Lcom/reactnativecommunity/picker/ReactPicker;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/reactnativecommunity/picker/PickerFocusEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
