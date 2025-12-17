.class public abstract Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.super Ljava/lang/Object;
.source "InvocationHandlerAdapter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;,
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;,
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;,
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$AssignerConfigurable;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final CACHED:Z = true

.field private static final INVOCATION_HANDLER_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private static final PRIVILEGED:Z = true

.field private static final UNCACHED:Z = false

.field private static final UNPRIVILEGED:Z = false


# instance fields
.field protected final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field protected final cached:Z

.field protected final fieldName:Ljava/lang/String;

.field protected final privileged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->INVOCATION_HANDLER_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iput-boolean p2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    iput-boolean p3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    iput-object p4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->INVOCATION_HANDLER_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method private argumentValuesOf(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 176
    new-instance v4, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 177
    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v6

    invoke-virtual {v6, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v7, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 178
    invoke-interface {v6, v3, v7, v8}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v4, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 176
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static of(Ljava/lang/reflect/InvocationHandler;)Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invocationHandler$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->of(Ljava/lang/reflect/InvocationHandler;Ljava/lang/String;)Lnet/bytebuddy/implementation/InvocationHandlerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/InvocationHandler;Ljava/lang/String;)Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
    .locals 7

    .line 135
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v0, v6

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Ljava/lang/reflect/InvocationHandler;)V

    return-object v6
.end method

.method public static toField(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
    .locals 1

    .line 148
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvocationHandlerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
    .locals 7

    .line 162
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v6
.end method


# virtual methods
.method protected apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4

    .line 223
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->ofPrivileged(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object v0

    .line 229
    :goto_0
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/16 v2, 0x8

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    .line 231
    invoke-static {p5}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, v2, p5

    const/4 p4, 0x2

    .line 232
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p5

    aput-object p5, v2, p4

    iget-boolean p4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    if-eqz p4, :cond_1

    .line 233
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;->cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    :cond_1
    const/4 p4, 0x3

    aput-object v0, v2, p4

    sget-object p4, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 234
    invoke-static {p4}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object p4

    invoke-direct {p0, p3}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->argumentValuesOf(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;

    move-result-object p5

    invoke-virtual {p4, p5}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, v2, p5

    sget-object p4, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->INVOCATION_HANDLER_TYPE:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 235
    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {p4}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, v2, p5

    iget-object p4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 236
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p4, p5, v0, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    const/4 p5, 0x6

    aput-object p4, v2, p5

    .line 237
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p4

    invoke-static {p4}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p4

    const/4 p5, 0x7

    aput-object p4, v2, p5

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 238
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 239
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "It is not possible to apply an invocation handler onto the static method "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->cached:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->privileged:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public abstract withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation;
.end method

.method public abstract withPrivilegedLookup()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$AssignerConfigurable;
.end method

.method public abstract withoutMethodCache()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;
.end method
