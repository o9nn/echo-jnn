.class Lcom/calendarevents/RNCalendarEvents$5;
.super Ljava/lang/Object;
.source "RNCalendarEvents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calendarevents/RNCalendarEvents;->findAllEvents(Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calendarevents/RNCalendarEvents;

.field final synthetic val$calendars:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$endDate:Lcom/facebook/react/bridge/Dynamic;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$startDate:Lcom/facebook/react/bridge/Dynamic;


# direct methods
.method constructor <init>(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
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

    iput-object p1, p0, Lcom/calendarevents/RNCalendarEvents$5;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iput-object p2, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$startDate:Lcom/facebook/react/bridge/Dynamic;

    iput-object p3, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$endDate:Lcom/facebook/react/bridge/Dynamic;

    iput-object p4, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$calendars:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p5, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents$5;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$startDate:Lcom/facebook/react/bridge/Dynamic;

    iget-object v2, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$endDate:Lcom/facebook/react/bridge/Dynamic;

    iget-object v3, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$calendars:Lcom/facebook/react/bridge/ReadableArray;

    .line 1382
    invoke-static {v0, v1, v2, v3}, Lcom/calendarevents/RNCalendarEvents;->-$$Nest$mfindEvents(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1383
    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RNCalendarEvents find event error"

    .line 1386
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "find event error"

    .line 1387
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
