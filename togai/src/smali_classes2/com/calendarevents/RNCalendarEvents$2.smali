.class Lcom/calendarevents/RNCalendarEvents$2;
.super Ljava/lang/Object;
.source "RNCalendarEvents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calendarevents/RNCalendarEvents;->saveCalendar(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calendarevents/RNCalendarEvents;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    iput-object p1, p0, Lcom/calendarevents/RNCalendarEvents$2;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iput-object p2, p0, Lcom/calendarevents/RNCalendarEvents$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lcom/calendarevents/RNCalendarEvents$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/calendarevents/RNCalendarEvents$2;->this$0:Lcom/calendarevents/RNCalendarEvents;

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$2;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    .line 1302
    invoke-static {v0, v1}, Lcom/calendarevents/RNCalendarEvents;->-$$Nest$maddCalendar(Lcom/calendarevents/RNCalendarEvents;Lcom/facebook/react/bridge/ReadableMap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 1303
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RNCalendarEvents save calendar error"

    .line 1305
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/calendarevents/RNCalendarEvents$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "save calendar error"

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
