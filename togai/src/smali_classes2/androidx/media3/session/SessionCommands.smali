.class public final Landroidx/media3/session/SessionCommands;
.super Ljava/lang/Object;
.source "SessionCommands.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/SessionCommands$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/SessionCommands;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/session/SessionCommands;

.field private static final FIELD_SESSION_COMMANDS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SessionCommands"


# instance fields
.field public final commands:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Landroidx/media3/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    const/4 v0, 0x0

    .line 233
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/SessionCommands;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    .line 249
    new-instance v0, Landroidx/media3/session/SessionCommands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/SessionCommands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/session/SessionCommand;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Landroidx/media3/session/SessionCommands$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static containsCommandCode(Ljava/util/Collection;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/session/SessionCommand;",
            ">;I)Z"
        }
    .end annotation

    .line 223
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionCommand;

    .line 224
    iget v0, v0, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;
    .locals 4

    sget-object v0, Landroidx/media3/session/SessionCommands;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    .line 253
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "SessionCommands"

    const-string v0, "Missing commands. Creating an empty SessionCommands"

    .line 255
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    return-object p0

    .line 259
    :cond_0
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    const/4 v1, 0x0

    .line 260
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 261
    sget-object v2, Landroidx/media3/session/SessionCommand;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v2, v3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/SessionCommand;

    invoke-virtual {v0, v2}, Landroidx/media3/session/SessionCommands$Builder;->add(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/SessionCommands$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/session/SessionCommands$Builder;->build()Landroidx/media3/session/SessionCommands;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/session/SessionCommands$Builder;
    .locals 2

    .line 200
    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/SessionCommands$Builder;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/session/SessionCommands$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Use contains(Command) for custom command"

    .line 194
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    .line 195
    invoke-static {v0, p1}, Landroidx/media3/session/SessionCommands;->containsCommandCode(Ljava/util/Collection;I)Z

    move-result p1

    return p1
.end method

.method public contains(Landroidx/media3/session/SessionCommand;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    .line 183
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 208
    :cond_0
    instance-of v0, p1, Landroidx/media3/session/SessionCommands;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_1
    check-cast p1, Landroidx/media3/session/SessionCommands;

    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    .line 213
    iget-object p1, p1, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    .line 218
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/media3/session/SessionCommands;->commands:Lcom/google/common/collect/ImmutableSet;

    .line 240
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/SessionCommand;

    .line 241
    invoke-virtual {v3}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/media3/session/SessionCommands;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
