.class public Lcom/zoontek/rnpermissions/RNPermissionsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNPermissions"
.end annotation


# instance fields
.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->check(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public checkLocationAccuracy(Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    invoke-static {p1}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->checkLocationAccuracy(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public checkMultiple(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->checkMultiple(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public checkNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->checkNotifications(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

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

    .line 38
    invoke-static {}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->getConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNPermissions"

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    invoke-static {p2, v0, p1, p3}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->onRequestPermissionsResult(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/util/SparseArray;I[I)Z

    move-result p1

    return p1
.end method

.method public openPhotoPicker(Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 93
    invoke-static {p1}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->openPhotoPicker(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public openSettings(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->openSettings(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    invoke-static {v0, p0, v1, p1, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->request(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/PermissionListener;Landroid/util/SparseArray;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public requestLocationAccuracy(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 88
    invoke-static {p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->requestLocationAccuracy(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public requestMultiple(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    invoke-static {v0, p0, v1, p1, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->requestMultiple(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/PermissionListener;Landroid/util/SparseArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public requestNotifications(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->requestNotifications(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public shouldShowRequestRationale(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModuleImpl;->shouldShowRequestRationale(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
