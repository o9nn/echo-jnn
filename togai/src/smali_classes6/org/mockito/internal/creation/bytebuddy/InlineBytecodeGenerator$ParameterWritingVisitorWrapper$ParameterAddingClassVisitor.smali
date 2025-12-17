.class Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "InlineBytecodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterAddingClassVisitor"
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 1

    .line 289
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$1;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method


# virtual methods
.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 0

    .line 295
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    iget-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$ParameterAddingClassVisitor;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 296
    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p4

    const-string p5, "<init>"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 297
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {p2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    :goto_0
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    .line 296
    invoke-interface {p4, p2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodList;

    .line 299
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterList;->hasExplicitMetaData()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 300
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 301
    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getModifiers()I

    move-result p3

    invoke-virtual {p1, p4, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    goto :goto_1

    .line 303
    :cond_1
    new-instance p2, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$MethodParameterStrippingMethodVisitor;

    invoke-direct {p2, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator$ParameterWritingVisitorWrapper$MethodParameterStrippingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-object p2

    :cond_2
    return-object p1
.end method
