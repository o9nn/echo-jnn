.class public final Landroidx/media3/session/CommandButton$Builder;
.super Ljava/lang/Object;
.source "CommandButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/CommandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private displayName:Ljava/lang/CharSequence;

.field private enabled:Z

.field private extras:Landroid/os/Bundle;

.field private iconResId:I

.field private playerCommand:I

.field private sessionCommand:Landroidx/media3/session/SessionCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    .line 56
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/CommandButton;
    .locals 9

    .line 150
    new-instance v8, Landroidx/media3/session/CommandButton;

    iget-object v1, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v2, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    iget v3, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    iget-object v4, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    iget-boolean v6, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IILjava/lang/CharSequence;Landroid/os/Bundle;ZLandroidx/media3/session/CommandButton$1;)V

    return-object v8
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->displayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/session/CommandButton$Builder;->enabled:Z

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;
    .locals 1

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconResId(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->iconResId:I

    return-object p0
.end method

.method public setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    .line 88
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    return-object p0
.end method

.method public setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;
    .locals 2

    const-string v0, "sessionCommand should not be null."

    .line 69
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroidx/media3/session/CommandButton$Builder;->playerCommand:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    .line 70
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/session/CommandButton$Builder;->sessionCommand:Landroidx/media3/session/SessionCommand;

    return-object p0
.end method
