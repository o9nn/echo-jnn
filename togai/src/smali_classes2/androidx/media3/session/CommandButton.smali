.class public final Landroidx/media3/session/CommandButton;
.super Ljava/lang/Object;
.source "CommandButton.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/CommandButton$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_DISPLAY_NAME:Ljava/lang/String;

.field private static final FIELD_ENABLED:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_ICON_RES_ID:Ljava/lang/String;

.field private static final FIELD_PLAYER_COMMAND:Ljava/lang/String;

.field private static final FIELD_SESSION_COMMAND:Ljava/lang/String;


# instance fields
.field public final displayName:Ljava/lang/CharSequence;

.field public final extras:Landroid/os/Bundle;

.field public final iconResId:I

.field public final isEnabled:Z

.field public final playerCommand:I

.field public final sessionCommand:Landroidx/media3/session/SessionCommand;


# direct methods
.method public static synthetic $r8$lambda$NuCyllBZqMGlcMmw2c9ZW1r2MLk(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/CommandButton;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_SESSION_COMMAND:Ljava/lang/String;

    const/4 v0, 0x1

    .line 237
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_PLAYER_COMMAND:Ljava/lang/String;

    const/4 v0, 0x2

    .line 238
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_ICON_RES_ID:Ljava/lang/String;

    const/4 v0, 0x3

    .line 239
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_DISPLAY_NAME:Ljava/lang/String;

    const/4 v0, 0x4

    .line 240
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_EXTRAS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 241
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/CommandButton;->FIELD_ENABLED:Ljava/lang/String;

    .line 259
    new-instance v0, Landroidx/media3/session/CommandButton$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/CommandButton$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/CommandButton;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/session/SessionCommand;IILjava/lang/CharSequence;Landroid/os/Bundle;Z)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iput p2, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    iput p3, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    iput-object p4, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    .line 196
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    iput-boolean p6, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/SessionCommand;IILjava/lang/CharSequence;Landroid/os/Bundle;ZLandroidx/media3/session/CommandButton$1;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IILjava/lang/CharSequence;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton;
    .locals 8

    sget-object v0, Landroidx/media3/session/CommandButton;->FIELD_SESSION_COMMAND:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_0
    sget-object v1, Landroidx/media3/session/SessionCommand;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, v0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionCommand;

    :goto_0
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_PLAYER_COMMAND:Ljava/lang/String;

    const/4 v2, -0x1

    .line 270
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Landroidx/media3/session/CommandButton;->FIELD_ICON_RES_ID:Ljava/lang/String;

    const/4 v4, 0x0

    .line 271
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, Landroidx/media3/session/CommandButton;->FIELD_DISPLAY_NAME:Ljava/lang/String;

    const-string v6, ""

    .line 272
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Landroidx/media3/session/CommandButton;->FIELD_EXTRAS:Ljava/lang/String;

    .line 273
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    sget-object v7, Landroidx/media3/session/CommandButton;->FIELD_ENABLED:Ljava/lang/String;

    .line 274
    invoke-virtual {p0, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 275
    new-instance v4, Landroidx/media3/session/CommandButton$Builder;

    invoke-direct {v4}, Landroidx/media3/session/CommandButton$Builder;-><init>()V

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v4, v0}, Landroidx/media3/session/CommandButton$Builder;->setSessionCommand(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton$Builder;

    :cond_1
    if-eq v1, v2, :cond_2

    .line 280
    invoke-virtual {v4, v1}, Landroidx/media3/session/CommandButton$Builder;->setPlayerCommand(I)Landroidx/media3/session/CommandButton$Builder;

    .line 283
    :cond_2
    invoke-virtual {v4, v3}, Landroidx/media3/session/CommandButton$Builder;->setIconResId(I)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v5}, Landroidx/media3/session/CommandButton$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    if-nez v6, :cond_3

    .line 285
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_3
    invoke-virtual {v0, v6}, Landroidx/media3/session/CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/session/CommandButton$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p0}, Landroidx/media3/session/CommandButton$Builder;->setEnabled(Z)Landroidx/media3/session/CommandButton$Builder;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroidx/media3/session/CommandButton$Builder;->build()Landroidx/media3/session/CommandButton;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method copyWithIsEnabled(Z)Landroidx/media3/session/CommandButton;
    .locals 8
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-ne v0, p1, :cond_0

    return-object p0

    .line 209
    :cond_0
    new-instance v0, Landroidx/media3/session/CommandButton;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v3, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    iget v4, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    iget-object v5, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    new-instance v6, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/CommandButton;-><init>(Landroidx/media3/session/SessionCommand;IILjava/lang/CharSequence;Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 218
    :cond_0
    instance-of v1, p1, Landroidx/media3/session/CommandButton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    check-cast p1, Landroidx/media3/session/CommandButton;

    iget-object v1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 222
    iget-object v3, p1, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    iget v3, p1, Landroidx/media3/session/CommandButton;->playerCommand:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    iget v3, p1, Landroidx/media3/session/CommandButton;->iconResId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    .line 225
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    iget-boolean p1, p1, Landroidx/media3/session/CommandButton;->isEnabled:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    iget v1, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/session/CommandButton;->FIELD_SESSION_COMMAND:Ljava/lang/String;

    .line 248
    invoke-virtual {v1}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_PLAYER_COMMAND:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_ICON_RES_ID:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/CommandButton;->iconResId:I

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_DISPLAY_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->displayName:Ljava/lang/CharSequence;

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/CommandButton;->extras:Landroid/os/Bundle;

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/CommandButton;->FIELD_ENABLED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/session/CommandButton;->isEnabled:Z

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
