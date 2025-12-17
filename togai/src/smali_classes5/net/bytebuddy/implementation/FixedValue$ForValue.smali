.class public Lnet/bytebuddy/implementation/FixedValue$ForValue;
.super Lnet/bytebuddy/implementation/FixedValue;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "value"


# instance fields
.field private final fieldName:Ljava/lang/String;

.field private final fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field

.field private final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "value$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 648
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 661
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FixedValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    .line 664
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/implementation/FixedValue$ForValue;)Ljava/lang/String;
    .locals 0

    .line 608
    iget-object p0, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/implementation/FixedValue$ForValue;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    .line 608
    iget-object p0, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    .line 689
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/FixedValue$ForValue$StaticFieldByteCodeAppender;-><init>(Lnet/bytebuddy/implementation/FixedValue$ForValue;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/FixedValue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FixedValue;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/FixedValue$ForValue;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/FixedValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 4

    .line 678
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    const/16 v2, 0x1049

    iget-object v3, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 679
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation;
    .locals 3

    .line 671
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->fieldName:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForValue;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/bytebuddy/implementation/FixedValue$ForValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
