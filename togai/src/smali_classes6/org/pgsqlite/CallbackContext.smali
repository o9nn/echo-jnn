.class public Lorg/pgsqlite/CallbackContext;
.super Ljava/lang/Object;
.source "CallbackContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallbackContext"


# instance fields
.field private errorCallback:Lcom/facebook/react/bridge/Callback;

.field private successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    iput-object p2, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public error(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    .line 74
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public success()V
    .locals 2

    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    const-string v1, "Success"

    .line 56
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public success(Lcom/facebook/react/bridge/WritableArray;)V
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 49
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public success(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 30
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
