.class public Lapp/notifee/core/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/notifee/core/model/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:I

.field public c:Ljava/util/concurrent/TimeUnit;

.field public d:Ljava/lang/Boolean;

.field public e:Lapp/notifee/core/model/a$a;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lapp/notifee/core/model/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/notifee/core/model/a;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lapp/notifee/core/model/a;->d:Ljava/lang/Boolean;

    .line 5
    sget-object v1, Lapp/notifee/core/model/a$a;->c:Lapp/notifee/core/model/a$a;

    iput-object v1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    iput-object v0, p0, Lapp/notifee/core/model/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lapp/notifee/core/model/a;->g:Ljava/lang/Long;

    iput-object p1, p0, Lapp/notifee/core/model/a;->a:Landroid/os/Bundle;

    const-string v0, "repeatFrequency"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lapp/notifee/core/model/a;->a:Landroid/os/Bundle;

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln/o/t/i/f/e/e/p;->a(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lapp/notifee/core/model/a;->a:Landroid/os/Bundle;

    const-string/jumbo v4, "timestamp"

    .line 26
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln/o/t/i/f/e/e/p;->b(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lapp/notifee/core/model/a;->g:Ljava/lang/Long;

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    iput p1, p0, Lapp/notifee/core/model/a;->b:I

    .line 45
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lapp/notifee/core/model/a;->c:Ljava/util/concurrent/TimeUnit;

    const-string p1, "WEEKLY"

    iput-object p1, p0, Lapp/notifee/core/model/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput v3, p0, Lapp/notifee/core/model/a;->b:I

    .line 48
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lapp/notifee/core/model/a;->c:Ljava/util/concurrent/TimeUnit;

    const-string p1, "DAILY"

    iput-object p1, p0, Lapp/notifee/core/model/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput v3, p0, Lapp/notifee/core/model/a;->b:I

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lapp/notifee/core/model/a;->c:Ljava/util/concurrent/TimeUnit;

    const-string p1, "HOURLY"

    iput-object p1, p0, Lapp/notifee/core/model/a;->f:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object p1, p0, Lapp/notifee/core/model/a;->a:Landroid/os/Bundle;

    const-string v0, "alarmManager"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    const-string v4, "allowWhileIdle"

    if-eqz p1, :cond_a

    .line 69
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lapp/notifee/core/model/a;->d:Ljava/lang/Boolean;

    iget-object p1, p0, Lapp/notifee/core/model/a;->a:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "type"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    invoke-static {v0}, Ln/o/t/i/f/e/e/p;->a(Ljava/lang/Object;)I

    move-result v2

    .line 83
    :cond_4
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v2, v5

    :cond_5
    if-eqz v2, :cond_9

    if-eq v2, v3, :cond_8

    if-eq v2, v5, :cond_7

    const/4 p1, 0x4

    if-eq v2, p1, :cond_6

    iput-object v1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    goto :goto_1

    .line 104
    :cond_6
    sget-object p1, Lapp/notifee/core/model/a$a;->e:Lapp/notifee/core/model/a$a;

    iput-object p1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    goto :goto_1

    .line 105
    :cond_7
    sget-object p1, Lapp/notifee/core/model/a$a;->d:Lapp/notifee/core/model/a$a;

    iput-object p1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    goto :goto_1

    .line 106
    :cond_8
    sget-object p1, Lapp/notifee/core/model/a$a;->b:Lapp/notifee/core/model/a$a;

    iput-object p1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    goto :goto_1

    .line 107
    :cond_9
    sget-object p1, Lapp/notifee/core/model/a$a;->a:Lapp/notifee/core/model/a$a;

    iput-object p1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lapp/notifee/core/model/a;->a:Landroid/os/Bundle;

    .line 124
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 126
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lapp/notifee/core/model/a;->d:Ljava/lang/Boolean;

    .line 127
    sget-object p1, Lapp/notifee/core/model/a$a;->d:Lapp/notifee/core/model/a$a;

    iput-object p1, p0, Lapp/notifee/core/model/a;->e:Lapp/notifee/core/model/a$a;

    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lapp/notifee/core/model/a;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lapp/notifee/core/model/a;->g:Ljava/lang/Long;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lapp/notifee/core/model/a;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const-wide/16 v2, 0x0

    goto :goto_1

    :pswitch_0
    const-wide/32 v2, 0x36ee80

    goto :goto_1

    :pswitch_1
    const-wide/32 v2, 0x5265c00

    goto :goto_1

    :pswitch_2
    const-wide/32 v2, 0x240c8400

    .line 16
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    add-long/2addr v0, v2

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lapp/notifee/core/model/a;->g:Ljava/lang/Long;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x679d8b7f -> :sswitch_2
        0x3dce5f9 -> :sswitch_1
        0x7f5e0e71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
