.class Lcom/google/common/flogger/LogSiteMap$1;
.super Ljava/lang/Object;
.source "LogSiteMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/LogSiteMap;->addRemovalHook(Lcom/google/common/flogger/LogSiteKey;Lcom/google/common/flogger/backend/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/LogSiteMap;

.field final synthetic val$key:Lcom/google/common/flogger/LogSiteKey;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/LogSiteMap;Lcom/google/common/flogger/LogSiteKey;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/flogger/LogSiteMap$1;->this$0:Lcom/google/common/flogger/LogSiteMap;

    iput-object p2, p0, Lcom/google/common/flogger/LogSiteMap$1;->val$key:Lcom/google/common/flogger/LogSiteKey;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/LogSiteMap$1;->this$0:Lcom/google/common/flogger/LogSiteMap;

    .line 100
    invoke-static {v0}, Lcom/google/common/flogger/LogSiteMap;->access$000(Lcom/google/common/flogger/LogSiteMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/LogSiteMap$1;->val$key:Lcom/google/common/flogger/LogSiteKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
