.class Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;
.super Ljava/lang/Object;
.source "RNPermissionsModuleImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->requestMultiple(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/PermissionListener;Landroid/util/SparseArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$output:Lcom/facebook/react/bridge/WritableMap;

.field final synthetic val$permissionsToCheck:Ljava/util/ArrayList;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    iput-object p3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 273
    aget-object v1, p1, v0

    check-cast v1, [I

    const/4 v2, 0x1

    .line 274
    aget-object p1, p1, v2

    check-cast p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    :goto_0
    iget-object v2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$permissionsToCheck:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    array-length v3, v1

    if-lez v3, :cond_0

    aget v3, v1, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    const-string v4, "granted"

    .line 280
    invoke-interface {v3, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    const-string v4, "denied"

    .line 283
    invoke-interface {v3, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    const-string v4, "blocked"

    .line 285
    invoke-interface {v3, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$2;->val$output:Lcom/facebook/react/bridge/WritableMap;

    .line 290
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
