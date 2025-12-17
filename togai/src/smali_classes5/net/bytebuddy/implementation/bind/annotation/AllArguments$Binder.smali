.class public final enum Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;
.super Ljava/lang/Enum;
.source "AllArguments.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/AllArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Binder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
        "Lnet/bytebuddy/implementation/bind/annotation/AllArguments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    .line 126
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    .line 126
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Binder;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/AllArguments;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;"
        }
    .end annotation

    .line 150
    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object p3, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    invoke-interface {p3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    .line 157
    :goto_0
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bind/annotation/AllArguments;->includeSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 158
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 161
    invoke-interface {p4}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p4

    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p4

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p2

    invoke-static {p4, p2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    .line 162
    :cond_4
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p2

    .line 160
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 163
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 164
    invoke-static {p4}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    aput-object v6, v5, v2

    .line 165
    invoke-interface {p5, p4, p3, p6}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {v0, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 167
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 169
    :cond_5
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bind/annotation/AllArguments;->value()Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bind/annotation/AllArguments$Assignment;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Illegal;

    return-object p1

    .line 172
    :cond_6
    :goto_6
    invoke-interface {p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p4

    invoke-virtual {p4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p4

    add-int/2addr v4, p4

    goto :goto_5

    .line 174
    :cond_7
    new-instance p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;

    invoke-static {p3}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object p2

    invoke-virtual {p2, v3}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding$Anonymous;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1

    .line 155
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Expected an array type for all argument annotation on "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHandledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/implementation/bind/annotation/AllArguments;",
            ">;"
        }
    .end annotation

    .line 137
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/AllArguments;

    return-object v0
.end method
