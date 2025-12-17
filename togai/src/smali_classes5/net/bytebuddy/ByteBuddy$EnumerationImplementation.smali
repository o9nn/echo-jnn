.class public Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;
.super Ljava/lang/Object;
.source "ByteBuddy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ByteBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EnumerationImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$InitializationAppender;,
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$ValuesMethodAppender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final CLONE_METHOD_NAME:Ljava/lang/String; = "clone"

.field private static final ENUM_FIELD_MODIFIERS:I = 0x19

.field private static final ENUM_VALUES:Ljava/lang/String; = "$VALUES"

.field protected static final ENUM_VALUES_METHOD_NAME:Ljava/lang/String; = "values"

.field protected static final ENUM_VALUE_OF_METHOD_NAME:Ljava/lang/String; = "valueOf"


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    .line 1339
    new-instance v0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$ValuesMethodAppender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$ValuesMethodAppender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

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
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    iget-object p1, p1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    .line 1323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1324
    new-instance v2, Lnet/bytebuddy/description/field/FieldDescription$Token;

    sget-object v3, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1326
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    const/16 v4, 0x4019

    invoke-direct {v2, v1, v4, v3}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1324
    invoke-interface {p1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    goto :goto_0

    .line 1328
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    sget-object v1, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1331
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    const-string v2, "$VALUES"

    const/16 v3, 0x1019

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    .line 1329
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$InitializationAppender;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;->values:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation$InitializationAppender;-><init>(Ljava/util/List;)V

    .line 1332
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method
