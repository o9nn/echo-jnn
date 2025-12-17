.class public Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;
.super Ljava/lang/Object;
.source "TwaProviderPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public final launchMode:I

.field public final provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;->launchMode:I

    iput-object p2, p0, Lcom/google/androidbrowserhelper/trusted/TwaProviderPicker$Action;->provider:Ljava/lang/String;

    return-void
.end method
