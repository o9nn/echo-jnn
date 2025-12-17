.class Lcom/calendarevents/RNCalendarEvents$3;
.super Ljava/lang/Object;
.source "RNCalendarEvents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calendarevents/RNCalendarEvents;->removeCalendar(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calendarevents/RNCalendarEvents;

.field final synthetic val$CalendarID:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/calendarevents/RNCalendarEvents$3;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iput-object p2, p0, Lcom/calendarevents/RNCalendarEvents$3;->val$CalendarID:Ljava/lang/String;

    iput-object p3, p0, Lcom/calendarevents/RNCalendarEvents$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents$3;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$3;->val$CalendarID:Ljava/lang/String;

    .line 1324
    invoke-static {v0, v1}, Lcom/calendarevents/RNCalendarEvents;->-$$Nest$mremoveCalendar(Lcom/calendarevents/RNCalendarEvents;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1325
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RNCalendarEvents error removing calendar"

    .line 1328
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "error removing calendar"

    .line 1329
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
