.class public final synthetic Lapp/notifee/core/c$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lapp/notifee/core/model/NotificationAndroidModel;


# direct methods
.method public synthetic constructor <init>(Lapp/notifee/core/model/NotificationAndroidModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/notifee/core/c$$ExternalSyntheticLambda5;->f$0:Lapp/notifee/core/model/NotificationAndroidModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lapp/notifee/core/c$$ExternalSyntheticLambda5;->f$0:Lapp/notifee/core/model/NotificationAndroidModel;

    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0, p1}, Lapp/notifee/core/c;->c(Lapp/notifee/core/model/NotificationAndroidModel;Landroidx/core/app/NotificationCompat$Builder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
