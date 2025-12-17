.class public Lnet/bytebuddy/utility/JavaConstant$MethodType;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;


# instance fields
.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->parameterTypes:Ljava/util/List;

    return-void
.end method

.method public static varargs of(Ljava/lang/Class;[Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodType;"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodType;"
        }
    .end annotation

    .line 141
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 1

    .line 131
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 2

    .line 151
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodType;"
        }
    .end annotation

    .line 121
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public static ofConstant(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant$MethodType;"
        }
    .end annotation

    .line 211
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofConstant(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static ofConstant(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofConstant(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static ofConstant(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 2

    .line 221
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public static ofGetter(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 1

    .line 181
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofGetter(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static ofGetter(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 2

    .line 191
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public static ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 3

    .line 96
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->DISPATCHER:Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;

    .line 99
    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;->returnType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;->parameterArray(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p0

    invoke-static {v1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Ljava/lang/Class;[Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected method type object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofSetter(Ljava/lang/reflect/Field;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 1

    .line 161
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofSetter(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    return-object p0
.end method

.method public static ofSetter(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/utility/JavaConstant$MethodType;
    .locals 2

    .line 171
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public asConstantPoolValue()Ljava/lang/Object;
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 261
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 288
    :cond_1
    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodType;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->parameterTypes:Ljava/util/List;

    .line 289
    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType;->parameterTypes:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->parameterTypes:Ljava/util/List;

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 250
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    .line 239
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->parameterTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 270
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType;->parameterTypes:Ljava/util/List;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
