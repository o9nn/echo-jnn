.class public Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;
.super Ljava/lang/Object;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForEnumerationValue"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V
    .locals 0

    .line 2118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved;
    .locals 0

    .line 2126
    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved$Simple;

    iget-object p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;->enumerationDescription:Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object p1
.end method
