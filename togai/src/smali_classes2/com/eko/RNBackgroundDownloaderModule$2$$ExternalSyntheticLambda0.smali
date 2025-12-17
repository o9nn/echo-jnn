.class public final synthetic Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/eko/RNBackgroundDownloaderModule$2;

.field public final synthetic f$1:Lcom/facebook/react/bridge/WritableMap;

.field public final synthetic f$2:Lcom/eko/RNBGDTaskConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/eko/RNBackgroundDownloaderModule$2;Lcom/facebook/react/bridge/WritableMap;Lcom/eko/RNBGDTaskConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;->f$0:Lcom/eko/RNBackgroundDownloaderModule$2;

    iput-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/WritableMap;

    iput-object p3, p0, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;->f$2:Lcom/eko/RNBGDTaskConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;->f$0:Lcom/eko/RNBackgroundDownloaderModule$2;

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/WritableMap;

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;->f$2:Lcom/eko/RNBGDTaskConfig;

    invoke-static {v0, v1, v2}, Lcom/eko/RNBackgroundDownloaderModule$2;->$r8$lambda$s1Kt-ubQUO6640pShY8A-r4bgh0(Lcom/eko/RNBackgroundDownloaderModule$2;Lcom/facebook/react/bridge/WritableMap;Lcom/eko/RNBGDTaskConfig;)V

    return-void
.end method
