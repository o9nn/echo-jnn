.class public final Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;
.super Lcom/reactnativecommunity/asyncstorage/NativeAsyncStorageModuleSpec;
.source "AsyncStorageModule.java"

# interfaces
.implements Lcom/facebook/react/modules/common/ModuleDataCleaner$Cleanable;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCAsyncStorage"
.end annotation


# static fields
.field private static final MAX_SQL_KEYS:I = 0x3e7

.field public static final NAME:Ljava/lang/String; = "RNCAsyncStorage"


# instance fields
.field private final executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

.field private mReactDatabaseSupplier:Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

.field private mShuttingDown:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmReactDatabaseSupplier(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;)Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;
    .locals 0

    iget-object p0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mReactDatabaseSupplier:Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mensureDatabase(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->ensureDatabase()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 52
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/asyncstorage/NativeAsyncStorageModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mShuttingDown:Z

    .line 64
    invoke-static {p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageExpoMigration;->migrate(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    invoke-direct {v0, p2}, Lcom/reactnativecommunity/asyncstorage/SerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    .line 67
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 69
    invoke-static {p1}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->getInstance(Landroid/content/Context;)Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    move-result-object p1

    iput-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mReactDatabaseSupplier:Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    return-void
.end method

.method private ensureDatabase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mShuttingDown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mReactDatabaseSupplier:Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    .line 428
    invoke-virtual {v0}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->ensureDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clear(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 371
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$5;

    invoke-virtual {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$5;-><init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;)V

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 386
    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public clearSensitiveData()V
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mReactDatabaseSupplier:Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    .line 93
    invoke-virtual {v0}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->clearAndCloseDatabase()V

    return-void
.end method

.method public getAllKeys(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 395
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$6;

    invoke-virtual {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$6;-><init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;)V

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 421
    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCAsyncStorage"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/reactnativecommunity/asyncstorage/NativeAsyncStorageModuleSpec;->initialize()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mShuttingDown:Z

    return-void
.end method

.method public multiGet(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-static {p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageErrorUtil;->getInvalidKeyError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;

    invoke-virtual {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;-><init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableArray;)V

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public multiMerge(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 308
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$4;

    invoke-virtual {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$4;-><init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableArray;)V

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public multiRemove(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 255
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 256
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$3;

    invoke-virtual {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$3;-><init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableArray;)V

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    new-array p2, v1, [Ljava/lang/Void;

    .line 298
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public multiSet(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 189
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 190
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$2;

    invoke-virtual {p0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-direct {v0, p0, v2, p2, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$2;-><init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableArray;)V

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->executor:Lcom/reactnativecommunity/asyncstorage/SerialExecutor;

    new-array p2, v1, [Ljava/lang/Void;

    .line 246
    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mShuttingDown:Z

    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->mReactDatabaseSupplier:Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    .line 105
    invoke-virtual {v0}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->closeDatabase()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method
