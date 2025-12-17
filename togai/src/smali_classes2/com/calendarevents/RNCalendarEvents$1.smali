.class Lcom/calendarevents/RNCalendarEvents$1;
.super Ljava/lang/Object;
.source "RNCalendarEvents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calendarevents/RNCalendarEvents;->findCalendars(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calendarevents/RNCalendarEvents;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calendarevents/RNCalendarEvents$1;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iput-object p2, p0, Lcom/calendarevents/RNCalendarEvents$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents$1;->this$0:Lcom/calendarevents/RNCalendarEvents;

    .line 1273
    invoke-static {v0}, Lcom/calendarevents/RNCalendarEvents;->-$$Nest$mfindEventCalendars(Lcom/calendarevents/RNCalendarEvents;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1274
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RNCalendarEvents calendar request error"

    .line 1277
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "calendar request error"

    .line 1278
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
