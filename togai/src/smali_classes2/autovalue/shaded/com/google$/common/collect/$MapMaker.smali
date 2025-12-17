.class public final Lautovalue/shaded/com/google$/common/collect/$MapMaker;
.super Ljava/lang/Object;
.source "$MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final UNSET_INT:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I

.field keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

.field useCustomMap:Z

.field valueStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->initialCapacity:I

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public concurrencyLevel(I)Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 5

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    .line 178
    invoke-static {v1, v4, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 182
    :goto_1
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->concurrencyLevel:I

    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method getInitialCapacity()I
    .locals 2

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method getKeyEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 129
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->defaultEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/base/$Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    .line 219
    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->valueStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    .line 265
    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public initialCapacity(I)Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 5

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    .line 144
    invoke-static {v1, v4, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 148
    :goto_1
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->initialCapacity:I

    return-object p0
.end method

.method keyEquivalence(Lautovalue/shaded/com/google$/common/base/$Equivalence;)Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    .line 122
    invoke-static {v2, v3, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Equivalence;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    iput-boolean v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->useCustomMap:Z

    return-object p0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->useCustomMap:Z

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 283
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->create(Lautovalue/shaded/com/google$/common/collect/$MapMaker;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    move-result-object v0

    return-object v0
.end method

.method setKeyStrength(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;)Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    .line 209
    invoke-static {v2, v3, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    .line 211
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    iput-boolean v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->useCustomMap:Z

    :cond_1
    return-object p0
.end method

.method setValueStrength(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;)Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->valueStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    .line 255
    invoke-static {v2, v3, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->valueStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    .line 257
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    iput-boolean v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->useCustomMap:Z

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 292
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$MoreObjects;->toStringHelper(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 294
    invoke-virtual {v0, v3, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    :cond_0
    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->concurrencyLevel:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 297
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    :cond_1
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    :cond_2
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->valueStrength:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    :cond_3
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    if-eqz v1, :cond_4

    const-string v1, "keyEquivalence"

    .line 306
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;

    .line 308
    :cond_4
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 1

    .line 205
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->setKeyStrength(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;)Lautovalue/shaded/com/google$/common/collect/$MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lautovalue/shaded/com/google$/common/collect/$MapMaker;
    .locals 1

    .line 241
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->setValueStrength(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;)Lautovalue/shaded/com/google$/common/collect/$MapMaker;

    move-result-object v0

    return-object v0
.end method
