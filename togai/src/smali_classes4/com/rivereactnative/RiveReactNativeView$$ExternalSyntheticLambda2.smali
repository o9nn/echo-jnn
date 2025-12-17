.class public final synthetic Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/rivereactnative/RiveReactNativeView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/rivereactnative/RiveReactNativeView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda2;->f$0:Lcom/rivereactnative/RiveReactNativeView;

    iput-boolean p2, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda2;->f$0:Lcom/rivereactnative/RiveReactNativeView;

    iget-boolean v1, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda2;->f$1:Z

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lcom/rivereactnative/RiveReactNativeView;->$r8$lambda$nmhcdPIDH4Kzlv6HhYtFj6gUtxw(Lcom/rivereactnative/RiveReactNativeView;Z[B)V

    return-void
.end method
