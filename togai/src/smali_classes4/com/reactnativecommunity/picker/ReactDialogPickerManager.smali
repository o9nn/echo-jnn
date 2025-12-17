.class public Lcom/reactnativecommunity/picker/ReactDialogPickerManager;
.super Lcom/reactnativecommunity/picker/ReactPickerManager;
.source "ReactDialogPickerManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNCAndroidDialogPickerManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCAndroidDialogPicker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/reactnativecommunity/picker/ReactPickerManager;",
        "Lcom/facebook/react/viewmanagers/RNCAndroidDialogPickerManagerInterface<",
        "Lcom/reactnativecommunity/picker/ReactPicker;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNCAndroidDialogPicker"


# instance fields
.field private final mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativecommunity/picker/ReactPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/reactnativecommunity/picker/ReactPickerManager;-><init>()V

    .line 27
    new-instance v0, Lcom/facebook/react/viewmanagers/RNCAndroidDialogPickerManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNCAndroidDialogPickerManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    iput-object v0, p0, Lcom/reactnativecommunity/picker/ReactDialogPickerManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic blur(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager;->blur(Lcom/reactnativecommunity/picker/ReactPicker;)V

    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactDialogPickerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/picker/ReactPicker;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/picker/ReactPicker;
    .locals 2

    .line 47
    new-instance v0, Lcom/reactnativecommunity/picker/ReactPicker;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/reactnativecommunity/picker/ReactPicker;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public bridge synthetic focus(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerManager;->focus(Lcom/reactnativecommunity/picker/ReactPicker;)V

    return-void
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativecommunity/picker/ReactPicker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/reactnativecommunity/picker/ReactDialogPickerManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCAndroidDialogPicker"

    return-object v0
.end method

.method public bridge synthetic setColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setColor(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setDropdownIconColor(Landroid/view/View;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dropdownIconColor"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setDropdownIconColor(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    return-void
.end method

.method public bridge synthetic setDropdownIconRippleColor(Landroid/view/View;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dropdownIconRippleColor"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setDropdownIconRippleColor(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    return-void
.end method

.method public bridge synthetic setEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setEnabled(Lcom/reactnativecommunity/picker/ReactPicker;Z)V

    return-void
.end method

.method public bridge synthetic setItems(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "items"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setItems(Lcom/reactnativecommunity/picker/ReactPicker;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic setNativeSelected(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setNativeSelected(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    return-void
.end method

.method public bridge synthetic setNumberOfLines(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "numberOfLines"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setNumberOfLines(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    return-void
.end method

.method public bridge synthetic setPrompt(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "prompt"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setPrompt(Lcom/reactnativecommunity/picker/ReactPicker;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSelected(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selected"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPicker;

    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/picker/ReactPickerManager;->setSelected(Lcom/reactnativecommunity/picker/ReactPicker;I)V

    return-void
.end method
