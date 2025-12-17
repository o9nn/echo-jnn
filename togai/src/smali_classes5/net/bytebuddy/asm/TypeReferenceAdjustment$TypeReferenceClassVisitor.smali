.class public Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "TypeReferenceAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/TypeReferenceAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TypeReferenceClassVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;,
        Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;,
        Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;
    }
.end annotation


# static fields
.field private static final IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

.field private static final IGNORE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

.field private static final IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;


# instance fields
.field private final filter:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final observedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final strict:Z

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final visitedInnerTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;ZLnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/pool/TypePool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Z",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/pool/TypePool;",
            ")V"
        }
    .end annotation

    .line 163
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p4, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-boolean p2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->strict:Z

    iput-object p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->filter:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 167
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 168
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->visitedInnerTypes:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;
    .locals 0

    .line 112
    iget-object p0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object v0
.end method


# virtual methods
.method protected resolve(Ljava/lang/Object;)V
    .locals 1

    .line 366
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_0

    .line 367
    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    goto :goto_0

    .line 368
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_1

    .line 369
    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Handle;)V

    goto :goto_0

    .line 370
    :cond_1
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_2

    .line 371
    check-cast p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/ConstantDynamic;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected resolve(Lnet/bytebuddy/jar/asm/ConstantDynamic;)V
    .locals 5

    .line 337
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 339
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 340
    invoke-virtual {p0, v4}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Handle;)V

    .line 343
    :goto_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 344
    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgument(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected resolve(Lnet/bytebuddy/jar/asm/Handle;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 323
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 326
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 327
    invoke-virtual {p0, v2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resolve(Lnet/bytebuddy/jar/asm/Type;)V
    .locals 3

    .line 302
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 303
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 304
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 305
    invoke-virtual {p0, v2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 309
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getElementType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 312
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected resolveInternalName(Ljava/lang/String;)V
    .locals 1

    :goto_0
    const-string v0, "["

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 357
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-eqz p5, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 179
    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p6, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 182
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_1
    invoke-super/range {p0 .. p6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 213
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    invoke-direct {p2, p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    :cond_0
    sget-object p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitEnd()V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 260
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->visitedInnerTypes:Ljava/util/Set;

    .line 261
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    .line 262
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v2

    .line 263
    invoke-interface {v2}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 264
    invoke-interface {v2}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->filter:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 265
    invoke-interface {v2, v1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isNestedClass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isMemberType()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 269
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 271
    :goto_2
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 273
    :cond_3
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 274
    :goto_3
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v5

    .line 267
    invoke-super {p0, v2, v3, v4, v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    :cond_4
    :try_start_0
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->visitedInnerTypes:Ljava/util/Set;

    .line 278
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    goto :goto_1

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->strict:Z

    if-nez v2, :cond_5

    goto :goto_0

    .line 281
    :cond_5
    throw v1

    :cond_6
    iget-boolean v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->strict:Z

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 289
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Could not locate type for: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_8
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 0

    .line 235
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 238
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;

    invoke-direct {p2, p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;)V

    return-object p2

    :cond_0
    sget-object p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->IGNORE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

    return-object p1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->visitedInnerTypes:Ljava/util/Set;

    .line 207
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 0

    .line 246
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 248
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    if-eqz p5, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 250
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_0
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;

    invoke-direct {p2, p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-object p2

    :cond_1
    sget-object p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object p1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 189
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 201
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 195
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->observedTypes:Ljava/util/Set;

    .line 224
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    invoke-direct {p2, p0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    :cond_0
    sget-object p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method
