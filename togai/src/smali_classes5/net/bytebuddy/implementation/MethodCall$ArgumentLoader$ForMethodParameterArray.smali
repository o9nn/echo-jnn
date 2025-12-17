.class public Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethodParameterArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final parameters:Lnet/bytebuddy/description/method/ParameterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/method/ParameterList<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/ParameterList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "*>;)V"
        }
    .end annotation

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 8

    .line 1223
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 1225
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1226
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    .line 1230
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;->parameters:Lnet/bytebuddy/description/method/ParameterList;

    .line 1231
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 1232
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v6, 0x2

    new-array v6, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1233
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->load(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1234
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {p2, v3, p1, p3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-direct {v5, v6}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1236
    invoke-interface {v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1239
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot assign "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1242
    :cond_2
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array p3, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-direct {p2, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2

    .line 1228
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set method parameter array for non-array type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
