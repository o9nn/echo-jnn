.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;
.super Ljava/lang/Object;
.source "FieldProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FieldSetter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field private final methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodAccessorFactory;)V
    .locals 0

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    return-void
.end method

.method static synthetic access$400(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/description/field/FieldDescription;
    .locals 0

    .line 852
    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-object p0
.end method

.method static synthetic access$500(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/implementation/MethodAccessorFactory;
    .locals 0

    .line 852
    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    return-object p0
.end method

.method static synthetic access$600(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .locals 0

    .line 852
    iget-object p0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    .line 895
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;-><init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;Lnet/bytebuddy/implementation/Implementation$Target;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->methodAccessorFactory:Lnet/bytebuddy/implementation/MethodAccessorFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
