.class public final synthetic Lio/invertase/notifee/NotifeeEventSubscriber$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/invertase/notifee/HeadlessTask$GenericCallback;


# instance fields
.field public final synthetic f$0:Lapp/notifee/core/event/BlockStateEvent;


# direct methods
.method public synthetic constructor <init>(Lapp/notifee/core/event/BlockStateEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/notifee/NotifeeEventSubscriber$$ExternalSyntheticLambda1;->f$0:Lapp/notifee/core/event/BlockStateEvent;

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    iget-object v0, p0, Lio/invertase/notifee/NotifeeEventSubscriber$$ExternalSyntheticLambda1;->f$0:Lapp/notifee/core/event/BlockStateEvent;

    invoke-static {v0}, Lio/invertase/notifee/NotifeeEventSubscriber;->$r8$lambda$D8-zc3xUtKnFv_siUvhJFAw8OA8(Lapp/notifee/core/event/BlockStateEvent;)V

    return-void
.end method
