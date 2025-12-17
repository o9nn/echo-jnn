.class Lcom/calendarevents/RNCalendarEvents$4;
.super Ljava/lang/Object;
.source "RNCalendarEvents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calendarevents/RNCalendarEvents;->saveEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calendarevents/RNCalendarEvents;

.field final synthetic val$details:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calendarevents/RNCalendarEvents$4;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iput-object p2, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$details:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p4, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p5, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "add event error"

    :try_start_0
    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$4;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iget-object v2, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$details:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v4, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    .line 1352
    invoke-static {v1, v2, v3, v4}, Lcom/calendarevents/RNCalendarEvents;->-$$Nest$maddEvent(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1354
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "Unable to save event"

    .line 1356
    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "RNCalendarEvents add event error"

    .line 1359
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/calendarevents/RNCalendarEvents$4;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1360
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
