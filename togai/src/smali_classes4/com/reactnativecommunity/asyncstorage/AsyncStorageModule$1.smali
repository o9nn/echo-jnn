.class Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "AsyncStorageModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->multiGet(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$keys:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;

    iput-object p3, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    iput-object p4, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 120
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 14

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;

    .line 123
    invoke-static {p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->-$$Nest$mensureDatabase(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    .line 124
    invoke-static {v0}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageErrorUtil;->getDBError(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "key"

    const-string v1, "value"

    .line 128
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 130
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    iget-object v2, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 131
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    iget-object v2, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 132
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    sub-int/2addr v2, v12

    const/16 v3, 0x3e7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v2, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->this$0:Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;

    .line 133
    invoke-static {v2}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;->-$$Nest$fgetmReactDatabaseSupplier(Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule;)Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "catalystLocalStorage"

    .line 136
    invoke-static {v13}, Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;->buildKeySelection(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 137
    invoke-static {v4, v12, v13}, Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;->buildKeySelectionArgs(Lcom/facebook/react/bridge/ReadableArray;II)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 133
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 141
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v3, 0x1

    .line 143
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v4, v12

    :goto_1
    add-int v5, v12, v13

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$keys:Lcom/facebook/react/bridge/ReadableArray;

    .line 146
    invoke-interface {v5, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    :cond_2
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 153
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 154
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 155
    invoke-interface {v10, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 156
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 164
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 167
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 169
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 170
    invoke-interface {v4}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    .line 171
    invoke-interface {v10, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_2

    .line 173
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    add-int/lit16 v12, v12, 0x3e7

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "ReactNative"

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncStorageErrorUtil;->getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    aput-object p1, v4, v11

    aput-object v0, v4, v3

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    throw p1

    :cond_5
    iget-object p1, p0, Lcom/reactnativecommunity/asyncstorage/AsyncStorageModule$1;->val$callback:Lcom/facebook/react/bridge/Callback;

    .line 176
    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
