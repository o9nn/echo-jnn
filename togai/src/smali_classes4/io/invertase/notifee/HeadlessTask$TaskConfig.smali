.class public Lio/invertase/notifee/HeadlessTask$TaskConfig;
.super Ljava/lang/Object;
.source "HeadlessTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/notifee/HeadlessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskConfig"
.end annotation


# instance fields
.field private final mCallback:Lio/invertase/notifee/HeadlessTask$GenericCallback;

.field private final mParams:Lcom/facebook/react/bridge/WritableMap;

.field private mReactTaskId:I

.field private final mTaskId:I

.field private final mTaskName:Ljava/lang/String;

.field private final mTaskTimeout:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmReactTaskId(Lio/invertase/notifee/HeadlessTask$TaskConfig;)I
    .locals 0

    iget p0, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mReactTaskId:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/facebook/react/bridge/WritableMap;Lio/invertase/notifee/HeadlessTask$GenericCallback;)V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mTaskName:Ljava/lang/String;

    iput-wide p2, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mTaskTimeout:J

    iput-object p5, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mCallback:Lio/invertase/notifee/HeadlessTask$GenericCallback;

    .line 396
    invoke-static {}, Lio/invertase/notifee/HeadlessTask;->getNextTaskId()I

    move-result p1

    iput p1, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mTaskId:I

    const-string p2, "taskId"

    .line 398
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    iput-object p4, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mParams:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method


# virtual methods
.method public getCallback()Lio/invertase/notifee/HeadlessTask$GenericCallback;
    .locals 1

    iget-object v0, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mCallback:Lio/invertase/notifee/HeadlessTask$GenericCallback;

    return-object v0
.end method

.method public getReactTaskId()I
    .locals 1

    iget v0, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mReactTaskId:I

    return v0
.end method

.method public getTaskConfig()Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 7

    .line 419
    new-instance v6, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    iget-object v1, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mTaskName:Ljava/lang/String;

    iget-object v2, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mParams:Lcom/facebook/react/bridge/WritableMap;

    iget-wide v3, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mTaskTimeout:J

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    return-object v6
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mTaskId:I

    return v0
.end method

.method public setReactTaskId(I)V
    .locals 0

    iput p1, p0, Lio/invertase/notifee/HeadlessTask$TaskConfig;->mReactTaskId:I

    return-void
.end method
