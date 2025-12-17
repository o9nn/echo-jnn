.class public Lcom/reactnativecommunity/picker/ReactPickerShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ReactPickerShadowNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    return-void
.end method


# virtual methods
.method public setLocalData(Ljava/lang/Object;)V
    .locals 1

    .line 9
    instance-of v0, p1, Lcom/reactnativecommunity/picker/ReactPickerLocalData;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 10
    check-cast p1, Lcom/reactnativecommunity/picker/ReactPickerLocalData;

    invoke-virtual {p1}, Lcom/reactnativecommunity/picker/ReactPickerLocalData;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/picker/ReactPickerShadowNode;->setStyleMinHeight(F)V

    return-void
.end method
