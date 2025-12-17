.class public Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;
.super Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.source "InvocationHandlerAdapter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvocationHandlerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForInstance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "invocationHandler"


# instance fields
.field protected final invocationHandler:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Ljava/lang/reflect/InvocationHandler;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    iput-object p5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    .line 335
    new-instance v0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance$Appender;-><init>(Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4

    .line 324
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->fieldName:Ljava/lang/String;

    const/16 v2, 0x1049

    .line 327
    invoke-static {}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter;->access$000()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 325
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->fieldName:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation;
    .locals 7

    .line 312
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->cached:Z

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->privileged:Z

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Ljava/lang/reflect/InvocationHandler;)V

    return-object v6
.end method

.method public withPrivilegedLookup()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$AssignerConfigurable;
    .locals 7

    .line 317
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->cached:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Ljava/lang/reflect/InvocationHandler;)V

    return-object v6
.end method

.method public withoutMethodCache()Lnet/bytebuddy/implementation/InvocationHandlerAdapter$WithoutPrivilegeConfiguration;
    .locals 7

    .line 307
    new-instance v6, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->fieldName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->privileged:Z

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForInstance;-><init>(Ljava/lang/String;ZZLnet/bytebuddy/implementation/bytecode/assign/Assigner;Ljava/lang/reflect/InvocationHandler;)V

    return-object v6
.end method
