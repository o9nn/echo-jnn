.class public final Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;
.super Ljava/lang/Object;
.source "ActivityConfigNewInferTaskBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final editTextAntiprompt:Landroid/widget/EditText;

.field public final editTextInputPrefix:Landroid/widget/EditText;

.field public final editTextInputSuffix:Landroid/widget/EditText;

.field public final editTextSysPromptEnd:Landroid/widget/EditText;

.field public final editTextSysPromptStart:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final spinnerFileSelect:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->editTextAntiprompt:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->editTextInputPrefix:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->editTextInputSuffix:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->editTextSysPromptEnd:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->editTextSysPromptStart:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->spinnerFileSelect:Landroid/widget/Spinner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;
    .locals 10

    .line 81
    sget v0, Lcom/layla/R$id;->editTextAntiprompt:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lcom/layla/R$id;->editTextInputPrefix:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 93
    sget v0, Lcom/layla/R$id;->editTextInputSuffix:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 99
    sget v0, Lcom/layla/R$id;->editTextSysPromptEnd:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 105
    sget v0, Lcom/layla/R$id;->editTextSysPromptStart:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 111
    sget v0, Lcom/layla/R$id;->spinnerFileSelect:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    .line 117
    new-instance v0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;
    .locals 2

    .line 68
    sget v0, Lcom/layla/R$layout;->activity_config_new_infer_task:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->bind(Landroid/view/View;)Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/layla/databinding/ActivityConfigNewInferTaskBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
