.class public final Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;
.super Ljava/lang/Object;
.source "TaskmgrFloatingWidgetLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final taskmgrFloatingFrameLayout:Landroid/widget/FrameLayout;

.field public final taskmgrFloatingIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->taskmgrFloatingFrameLayout:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->taskmgrFloatingIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;
    .locals 3

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 64
    sget v1, Lcom/layla/R$id;->taskmgr_floating_icon:I

    .line 65
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 70
    new-instance p0, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;

    invoke-direct {p0, v0, v0, v2}, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object p0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;
    .locals 2

    .line 49
    sget v0, Lcom/layla/R$layout;->taskmgr_floating_widget_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->bind(Landroid/view/View;)Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/layla/databinding/TaskmgrFloatingWidgetLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
