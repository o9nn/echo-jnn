.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;
.super Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RedefinitionClassVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;
    }
.end annotation


# instance fields
.field private final contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

.field private final declarableFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declarableMethods:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaredTypes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

.field private initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler;

.field private methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

.field private final nestMembers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final readerFlags:I

.field private retainDeprecationModifiers:Z

.field final synthetic this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

.field private final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

.field private final writerFlags:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)V
    .locals 1

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4263
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    iput p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->writerFlags:I

    iput p6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->readerFlags:I

    .line 4268
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    .line 4269
    iget-object p2, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->fields:Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription;

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    .line 4270
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4272
    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    .line 4273
    iget-object p2, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedMethods:Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription;

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    .line 4274
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4276
    :cond_1
    iget-object p2, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4277
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->nestMembers:Ljava/util/Set;

    .line 4278
    iget-object p2, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p2

    iget-object p3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/bytebuddy/description/type/TypeList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->nestMembers:Ljava/util/Set;

    .line 4279
    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4282
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->nestMembers:Ljava/util/Set;

    .line 4284
    :cond_3
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declaredTypes:Ljava/util/LinkedHashMap;

    .line 4285
    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declaredTypes:Ljava/util/LinkedHashMap;

    .line 4286
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method static synthetic access$800(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    .locals 0

    .line 4187
    iget-object p0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    return-object p0
.end method

.method static synthetic access$900(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0

    .line 4187
    iget-object p0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    return-object p0
.end method

.method private resolveDeprecationModifiers(I)I
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->retainDeprecationModifiers:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onAfterAttributes()V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4365
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method

.method protected onNestHost()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4337
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4338
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onOuterType()V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4353
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4355
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 4356
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 4357
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4355
    invoke-virtual {v1, v2, v3, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4358
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4359
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4377
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4378
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4379
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected onVisitEnd()V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    .line 4531
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4532
    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-interface {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;->target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    .line 4534
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 4535
    invoke-interface {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler;

    .line 4537
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler;->complete(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4538
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4540
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 4541
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4542
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4543
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v4

    .line 4540
    invoke-virtual {v1, v2, v0, v3, v4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4544
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4545
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    .line 4546
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4547
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4548
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v4

    .line 4545
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4549
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4550
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    .line 4551
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v2

    .line 4552
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4553
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v4

    .line 4550
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declaredTypes:Ljava/util/LinkedHashMap;

    .line 4555
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 4556
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 4557
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isMemberType()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4558
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 4559
    :cond_5
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v4

    .line 4560
    :goto_4
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4561
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 4562
    :cond_6
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 4563
    :goto_5
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v1

    .line 4556
    invoke-virtual {v2, v3, v4, v5, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 4565
    :cond_7
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method protected onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableFields:Ljava/util/LinkedHashMap;

    .line 4388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4390
    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->fieldPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;

    invoke-interface {v1, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool;->target(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    move-result-object v0

    .line 4391
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->isImplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4392
    invoke-virtual {p0, v0, p5, p1, p4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->redefine(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;Ljava/lang/Object;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1

    .line 4395
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method protected onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4504
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declaredTypes:Ljava/util/LinkedHashMap;

    .line 4505
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    .line 4507
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 4509
    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4511
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isMemberType()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 4513
    :cond_1
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4511
    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4512
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    .line 4514
    :goto_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 4515
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 4516
    :cond_3
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    .line 4517
    :goto_2
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v0

    .line 4509
    invoke-virtual {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v1, "<clinit>"

    .line 4427
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    .line 4428
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v10

    if-nez v10, :cond_0

    .line 4430
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$600()Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 4431
    invoke-interface {v1}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->isEnabled()Z

    move-result v9

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v11, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v13, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->writerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 4436
    invoke-interface {v1}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v14, v7

    goto :goto_0

    :cond_1
    move v14, v8

    :goto_0
    iget v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->readerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    move v15, v7

    goto :goto_1

    :cond_2
    move v15, v8

    .line 4431
    :goto_1
    invoke-static/range {v9 .. v15}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;->of(ZLnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler;

    check-cast v1, Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-object v2, v1

    check-cast v2, Lnet/bytebuddy/jar/asm/MethodVisitor;

    :goto_2
    return-object v1

    :cond_3
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->declarableMethods:Ljava/util/LinkedHashMap;

    .line 4439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    if-nez v1, :cond_4

    .line 4440
    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 4441
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    goto :goto_4

    :cond_4
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_5

    move-object/from16 v3, p4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p4

    move v7, v8

    .line 4442
    :goto_3
    invoke-virtual {v0, v1, v7, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->redefine(Lnet/bytebuddy/description/method/MethodDescription;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method protected onVisitNestHost(Ljava/lang/String;)V
    .locals 0

    .line 4332
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->onNestHost()V

    return-void
.end method

.method protected onVisitNestMember(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4524
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->nestMembers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4525
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4345
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->onOuterType()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4347
    :catchall_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4370
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4371
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4372
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected redefine(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;Ljava/lang/Object;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 7

    .line 4408
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->getField()Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v0

    .line 4409
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getActualModifiers()I

    move-result v2

    invoke-direct {p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->resolveDeprecationModifiers(I)I

    move-result p3

    or-int/2addr v2, p3

    .line 4410
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 4411
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    sget-boolean p3, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4414
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object p4

    :goto_0
    move-object v5, p4

    .line 4415
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 4409
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4417
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$500()Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;

    invoke-direct {p3, p0, p2, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;)V

    move-object p1, p3

    :goto_1
    return-object p1
.end method

.method protected redefine(Lnet/bytebuddy/description/method/MethodDescription;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 4457
    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;->target(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    .line 4458
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isDefined()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4459
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getActualModifiers()I

    move-result p2

    invoke-direct {p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->resolveDeprecationModifiers(I)I

    move-result p3

    or-int v3, p2, p3

    .line 4460
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 4461
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    sget-boolean p2, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4464
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object p4

    :goto_0
    move-object v6, p4

    .line 4465
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v7

    .line 4459
    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1

    .line 4467
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    .line 4468
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4469
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v3

    .line 4470
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isImplemented()Z

    move-result v4

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/method/MethodDescription;->getActualModifiers(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v3

    invoke-direct {p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->resolveDeprecationModifiers(I)I

    move-result v4

    or-int/2addr v3, v4

    .line 4471
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .line 4472
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v6, :cond_2

    move-object v6, p4

    goto :goto_1

    .line 4475
    :cond_2
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v6

    .line 4476
    :goto_1
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v7

    .line 4468
    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4478
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$600()Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 4480
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;

    invoke-direct {p1, p0, v2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)V

    return-object p1

    .line 4481
    :cond_4
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isNative()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4482
    invoke-static {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->access$700(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    move-result-object p1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    move-result-object p1

    .line 4483
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->isRebased()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4484
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getActualModifiers()I

    move-result p2

    .line 4485
    invoke-direct {p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->resolveDeprecationModifiers(I)I

    move-result p3

    or-int v4, p2, p3

    .line 4486
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v5

    .line 4487
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    sget-boolean p2, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz p2, :cond_5

    goto :goto_2

    .line 4490
    :cond_5
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object p4

    :goto_2
    move-object v7, p4

    .line 4491
    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 4484
    invoke-super/range {v3 .. v8}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4493
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 4496
    :cond_6
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;

    invoke-direct {p1, p0, v2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)V

    return-object p1

    .line 4498
    :cond_7
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    invoke-static {p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->access$700(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    move-result-object p2

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2, p3}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    move-result-object p2

    invoke-direct {p1, p0, v2, v0, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;)V

    return-object p1
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 4297
    invoke-static {p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object p3

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4298
    invoke-static {p5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->access$200(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;

    move-result-object p5

    iget-object p6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    invoke-static {p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->access$100(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;)Lnet/bytebuddy/implementation/Implementation$Target$Factory;

    move-result-object p6

    invoke-interface {p5, p6, p3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;->compile(Lnet/bytebuddy/implementation/Implementation$Target$Factory;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Compiled;

    move-result-object p5

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    .line 4299
    new-instance p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Creating;

    iget-object p6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p6, p6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->methodPool:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-direct {p5, p6, v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Creating;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->initializationHandler:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4300
    iget-object v0, p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v2, p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v5, p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/implementation/Implementation$Context$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object p5

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 4305
    sget-object p5, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p3, p5}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p3

    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->retainDeprecationModifiers:Z

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 4306
    invoke-virtual {p3, p5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->setImplementationContext(Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    .line 4307
    iget-object v0, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v1, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v4, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v5, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v6, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget v7, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->writerFlags:I

    iget v8, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->readerFlags:I

    invoke-interface/range {v0 .. v8}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object p3

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4315
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p3, p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    and-int/lit8 p5, p2, 0x20

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    iget-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p5, p5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4316
    invoke-interface {p5}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result p5

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p6

    :goto_0
    invoke-interface {p3, p5}, Lnet/bytebuddy/description/type/TypeDescription;->getActualModifiers(Z)I

    move-result p3

    .line 4317
    invoke-direct {p0, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->resolveDeprecationModifiers(I)I

    move-result p5

    or-int/2addr p3, p5

    const/16 p5, 0x10

    and-int/2addr p2, p5

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4319
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result p2

    if-eqz p2, :cond_1

    move p6, p5

    :cond_1
    or-int v2, p3, p6

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4320
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    sget-boolean p2, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4323
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object p4

    :goto_1
    move-object v4, p4

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4324
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4325
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->access$300()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4326
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v5, p2

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object p2, p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4327
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v6

    move v1, p1

    .line 4315
    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
