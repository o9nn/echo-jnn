.class public final synthetic Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/rivereactnative/RiveReactNativeView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/rivereactnative/RiveReactNativeView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda1;->f$0:Lcom/rivereactnative/RiveReactNativeView;

    iput-object p2, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda1;->f$0:Lcom/rivereactnative/RiveReactNativeView;

    iget-object v1, p0, Lcom/rivereactnative/RiveReactNativeView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/rivereactnative/RiveReactNativeView;->$r8$lambda$1nN8fBXoxeleqTUHrmoAtaVU8D8(Lcom/rivereactnative/RiveReactNativeView;Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method
