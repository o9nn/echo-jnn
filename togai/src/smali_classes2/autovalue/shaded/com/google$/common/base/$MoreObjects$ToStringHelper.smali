.class public final Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "$MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;-><init>(Lautovalue/shaded/com/google$/common/base/$MoreObjects$1;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->holderHead:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->holderTail:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 151
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/google$/common/base/$MoreObjects$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;
    .locals 2

    .line 364
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;-><init>(Lautovalue/shaded/com/google$/common/base/$MoreObjects$1;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->holderTail:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    .line 365
    iput-object v0, v1, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->next:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->holderTail:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 1

    .line 370
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder()Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 371
    iput-object p1, v0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 1

    .line 376
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder()Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 377
    iput-object p2, v0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 378
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 194
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;D)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 204
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;F)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 214
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 224
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 234
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(C)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(D)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 284
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(F)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(I)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(J)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 323
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public addValue(Z)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 0

    .line 258
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public omitNullValues()Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->holderHead:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    .line 340
    iget-object v2, v2, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->next:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_4

    .line 343
    iget-object v4, v2, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 345
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v3, v2, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, v2, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v4, :cond_2

    .line 351
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 353
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, ", "

    .line 342
    :cond_3
    iget-object v2, v2, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;->next:Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
