.class Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupMenuCallbackHandler"
.end annotation


# instance fields
.field mConsumed:Z

.field final mSuccess:Lcom/facebook/react/bridge/Callback;


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mSuccess:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;-><init>(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    iget-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mSuccess:Lcom/facebook/react/bridge/Callback;

    const-string v0, "dismissed"

    .line 929
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mSuccess:Lcom/facebook/react/bridge/Callback;

    .line 937
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "itemSelected"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
