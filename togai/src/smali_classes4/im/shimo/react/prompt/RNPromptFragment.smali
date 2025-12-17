.class public Lim/shimo/react/prompt/RNPromptFragment;
.super Landroid/app/DialogFragment;
.source "RNPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/shimo/react/prompt/RNPromptFragment$PromptTypes;
    }
.end annotation


# static fields
.field static final ARG_BUTTON_NEGATIVE:Ljava/lang/String; = "button_negative"

.field static final ARG_BUTTON_NEUTRAL:Ljava/lang/String; = "button_neutral"

.field static final ARG_BUTTON_POSITIVE:Ljava/lang/String; = "button_positive"

.field static final ARG_DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field static final ARG_ITEMS:Ljava/lang/String; = "items"

.field static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field static final ARG_PLACEHOLDER:Ljava/lang/String; = "placeholder"

.field static final ARG_STYLE:Ljava/lang/String; = "style"

.field static final ARG_TITLE:Ljava/lang/String; = "title"

.field static final ARG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mInputText:Landroid/widget/EditText;

.field private mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const-string v0, "style"

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "default"

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v0, "shimo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 73
    :cond_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lim/shimo/react/prompt/R$style;->ShimoAlertDialogStyle:I

    invoke-direct {v1, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_1
    const-string v3, "title"

    .line 79
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v3, "button_positive"

    .line 81
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_3
    const-string v3, "button_negative"

    .line 84
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_4
    const-string v3, "button_neutral"

    .line 87
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_5
    const-string v3, "message"

    .line 92
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_6
    const-string v3, "items"

    .line 96
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 97
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 100
    :cond_7
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 110
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 107
    :cond_8
    sget p1, Lim/shimo/react/prompt/R$layout;->edit_text:I

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    :goto_2
    const-string p1, "type"

    .line 115
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_d

    .line 116
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v6, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "secure-text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v3

    goto :goto_4

    :sswitch_1
    const-string v2, "plain-text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x4

    goto :goto_4

    :sswitch_2
    const-string v2, "phone-pad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v5

    goto :goto_4

    :sswitch_3
    const-string v2, "numeric"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v4

    goto :goto_4

    :sswitch_4
    const-string v2, "email-address"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v6

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p1, -0x1

    :goto_4
    if-eqz p1, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_b

    move p1, v4

    goto :goto_5

    :cond_a
    const/16 p1, 0x21

    goto :goto_5

    :cond_b
    move p1, v5

    goto :goto_5

    :cond_c
    const/16 p1, 0x81

    goto :goto_5

    :cond_d
    const p1, 0x80001

    :goto_5
    const/high16 v2, 0x20000

    or-int/2addr p1, v2

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/4 p1, 0x6

    .line 143
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 144
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinLines(I)V

    const p1, 0x800033

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    .line 146
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    const-string p1, "defaultValue"

    .line 148
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 149
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 153
    invoke-virtual {v0, p1, p1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_e
    const-string p1, "placeholder"

    .line 157
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 158
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_f
    const/16 v6, 0x32

    const/16 v7, 0xf

    const/16 v8, 0x32

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v0

    .line 160
    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iput-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mInputText:Landroid/widget/EditText;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77d8913d -> :sswitch_4
        -0x773be4f3 -> :sswitch_3
        -0x3d67044c -> :sswitch_2
        0x3a261b50 -> :sswitch_1
        0x51a69dc3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mInputText:Landroid/widget/EditText;

    .line 178
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->onConfirm(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 168
    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lim/shimo/react/prompt/RNPromptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lim/shimo/react/prompt/RNPromptFragment;->createDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mInputText:Landroid/widget/EditText;

    .line 169
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public setListener(Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;)V
    .locals 0
    .param p1    # Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lim/shimo/react/prompt/RNPromptFragment;->mListener:Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    return-void
.end method
