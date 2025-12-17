.class public final Lcom/layla/tasker/ActivityConfigTaskerKt;
.super Ljava/lang/Object;
.source "ActivityConfigTasker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "alert",
        "",
        "Landroid/app/Activity;",
        "title",
        "",
        "message",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$bpLFZhdg9LL3GWGQDEF_b_3x7IU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/layla/tasker/ActivityConfigTaskerKt;->alert$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final alert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 17
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string p1, "OK"

    .line 19
    check-cast p1, Ljava/lang/CharSequence;

    new-instance p2, Lcom/layla/tasker/ActivityConfigTaskerKt$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/layla/tasker/ActivityConfigTaskerKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final alert$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 19
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
