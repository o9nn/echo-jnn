.class Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;
.super Ljava/lang/Object;
.source "TypeEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/TypeEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeRewriter"
.end annotation


# instance fields
.field private final baseType:Ljavax/lang/model/type/TypeMirror;

.field private final elementUtils:Ljavax/lang/model/util/Elements;

.field private final packageName:Ljava/lang/String;

.field private final scanner:Lcom/google/auto/value/processor/JavaScanner;

.field private final text:Ljava/lang/String;

.field private final textLength:I

.field private final typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V
    .locals 1

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->textLength:I

    .line 431
    new-instance v0, Lcom/google/auto/value/processor/JavaScanner;

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/JavaScanner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    iput-object p2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->elementUtils:Ljavax/lang/model/util/Elements;

    iput-object p3, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->typeUtils:Ljavax/lang/model/util/Types;

    iput-object p4, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->baseType:Ljavax/lang/model/type/TypeMirror;

    return-void
.end method

.method private classForName(Ljava/lang/String;)Ljavax/lang/model/type/DeclaredType;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 485
    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Could not find referenced class %s"

    .line 486
    invoke-static {v1, v2, p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 487
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method private classNameAt(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 524
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x60

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    .line 525
    invoke-virtual {v0, p1}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 527
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xab

    if-eq v2, v3, :cond_1

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, p1, 0x2

    :cond_2
    iget-object p1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 531
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private decode(Ljava/lang/StringBuilder;Lcom/google/auto/value/processor/TypeSimplifier;I)V
    .locals 2

    .line 491
    invoke-direct {p0, p3}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->classNameAt(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->classForName(Ljava/lang/String;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 493
    invoke-virtual {p2, v0}, Lcom/google/auto/value/processor/TypeSimplifier;->simplifiedClassName(Ljavax/lang/model/type/DeclaredType;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    .line 495
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0xab

    const/16 v1, 0x2e

    if-eq p3, v0, :cond_1

    const/16 v0, 0xbb

    if-eq p3, v0, :cond_0

    .line 509
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    .line 506
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    const/4 v0, 0x0

    add-int/lit8 p3, p3, 0x1

    .line 502
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private findImportMarker()Ljava/util/OptionalInt;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->textLength:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    const-string v2, "`import`"

    .line 516
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    .line 515
    invoke-virtual {v1, v0}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v0

    goto :goto_0

    .line 520
    :cond_1
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method private findReferencedClasses()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->textLength:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 476
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x60

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    const-string v3, "`import`"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    invoke-direct {p0, v1}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->classNameAt(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-direct {p0, v2}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->classForName(Ljava/lang/String;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    .line 475
    invoke-virtual {v2, v1}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method rewrite()Ljava/lang/String;
    .locals 7

    .line 440
    invoke-direct {p0}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->findReferencedClasses()Ljava/util/Set;

    move-result-object v4

    .line 442
    new-instance v6, Lcom/google/auto/value/processor/TypeSimplifier;

    iget-object v1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->elementUtils:Ljavax/lang/model/util/Elements;

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->baseType:Ljavax/lang/model/type/TypeMirror;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/TypeSimplifier;-><init>(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    invoke-direct {p0}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->findImportMarker()Ljava/util/OptionalInt;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 451
    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v6}, Lcom/google/auto/value/processor/TypeSimplifier;->typesToImport()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v2

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "import "

    .line 453
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    .line 455
    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v3

    :cond_1
    move v1, v3

    :goto_1
    iget v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->textLength:I

    if-ge v3, v2, :cond_3

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x60

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 464
    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 465
    invoke-direct {p0, v0, v6, v3}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->decode(Ljava/lang/StringBuilder;Lcom/google/auto/value/processor/TypeSimplifier;I)V

    iget-object v1, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    .line 466
    invoke-virtual {v1, v3}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v1

    :cond_2
    iget-object v2, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->scanner:Lcom/google/auto/value/processor/JavaScanner;

    .line 462
    invoke-virtual {v2, v3}, Lcom/google/auto/value/processor/JavaScanner;->tokenEnd(I)I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->text:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
