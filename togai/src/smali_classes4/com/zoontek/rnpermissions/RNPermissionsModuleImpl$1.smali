.class Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;
.super Ljava/lang/Object;
.source "RNPermissionsModuleImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->request(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/PermissionListener;Landroid/util/SparseArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;->val$permission:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 195
    aget-object v1, p1, v0

    check-cast v1, [I

    .line 197
    array-length v2, v1

    if-lez v2, :cond_0

    aget v0, v1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "granted"

    .line 198
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 200
    aget-object p1, p1, v0

    check-cast p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;->val$permission:Ljava/lang/String;

    .line 202
    invoke-interface {p1, v0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "denied"

    .line 203
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "blocked"

    .line 205
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
