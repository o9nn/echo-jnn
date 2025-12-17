.class public final Lcom/layla/databinding/FloatingWidgetLayoutBinding;
.super Ljava/lang/Object;
.source "FloatingWidgetLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final floatingFrameLayout:Landroid/widget/FrameLayout;

.field public final floatingIcon:Landroid/widget/ImageView;

.field public final messageBadge:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->floatingFrameLayout:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->floatingIcon:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->messageBadge:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/layla/databinding/FloatingWidgetLayoutBinding;
    .locals 4

    .line 68
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 70
    sget v1, Lcom/layla/R$id;->floating_icon:I

    .line 71
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 76
    sget v1, Lcom/layla/R$id;->message_badge:I

    .line 77
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Lcom/layla/databinding/FloatingWidgetLayoutBinding;

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/layla/databinding/FloatingWidgetLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/layla/databinding/FloatingWidgetLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/layla/databinding/FloatingWidgetLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/layla/databinding/FloatingWidgetLayoutBinding;
    .locals 2

    .line 55
    sget v0, Lcom/layla/R$layout;->floating_widget_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->bind(Landroid/view/View;)Lcom/layla/databinding/FloatingWidgetLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/layla/databinding/FloatingWidgetLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
