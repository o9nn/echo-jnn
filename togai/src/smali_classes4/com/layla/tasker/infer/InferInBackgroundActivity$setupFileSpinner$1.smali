.class public final Lcom/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1;
.super Ljava/lang/Object;
.source "BackgroundInfer.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/tasker/infer/InferInBackgroundActivity;->setupFileSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $filePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layla/tasker/infer/InferInBackgroundActivity;


# direct methods
.method constructor <init>(Lcom/layla/tasker/infer/InferInBackgroundActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layla/tasker/infer/InferInBackgroundActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1;->this$0:Lcom/layla/tasker/infer/InferInBackgroundActivity;

    iput-object p2, p0, Lcom/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1;->$filePaths:Ljava/util/List;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1;->this$0:Lcom/layla/tasker/infer/InferInBackgroundActivity;

    iget-object p2, p0, Lcom/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1;->$filePaths:Ljava/util/List;

    .line 190
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/layla/tasker/infer/InferInBackgroundActivity;->access$setSelectedFilePath$p(Lcom/layla/tasker/infer/InferInBackgroundActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/layla/tasker/infer/InferInBackgroundActivity$setupFileSpinner$1;->this$0:Lcom/layla/tasker/infer/InferInBackgroundActivity;

    const/4 v0, 0x0

    .line 196
    invoke-static {p1, v0}, Lcom/layla/tasker/infer/InferInBackgroundActivity;->access$setSelectedFilePath$p(Lcom/layla/tasker/infer/InferInBackgroundActivity;Ljava/lang/String;)V

    return-void
.end method
