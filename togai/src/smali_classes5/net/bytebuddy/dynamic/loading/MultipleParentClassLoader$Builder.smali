.class public Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
.super Ljava/lang/Object;
.source "MultipleParentClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ONLY:I


# instance fields
.field private final classLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final sealed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;Z)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    iput-boolean p2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private doBuild(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 3

    .line 453
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 300
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    .line 303
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    new-instance p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public varargs append([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 262
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs append([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 0

    .line 288
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendMostSpecific(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 367
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 368
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 370
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 374
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 377
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 380
    :cond_5
    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 382
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_7
    new-instance p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public varargs appendMostSpecific([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 320
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs appendMostSpecific([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 0

    .line 347
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Ljava/lang/ClassLoader;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    const/4 v1, 0x0

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public build(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 440
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->doBuild(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 395
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 396
    invoke-interface {p1, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_1
    new-instance p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
