.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValidatingClassVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingFieldVisitor;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;
    }
.end annotation


# static fields
.field private static final IGNORE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor; = null

.field private static final IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor; = null

.field private static final NO_PARAMETERS:Ljava/lang/String; = "()"

.field private static final RETURNS_VOID:Ljava/lang/String; = "V"

.field private static final STRING_DESCRIPTOR:Ljava/lang/String; = "Ljava/lang/String;"


# instance fields
.field private constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 1

    .line 2035
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;
    .locals 0

    .line 1997
    iget-object p0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    return-object p0
.end method

.method protected static of(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0

    .line 2046
    invoke-virtual {p1}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    invoke-direct {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 2053
    invoke-static {p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    .line 2054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;

    invoke-direct {v2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClassFileVersion;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "/package-info"

    .line 2056
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_3

    .line 2059
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2062
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForAnnotation;->JAVA_8:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForAnnotation;

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForAnnotation;->CLASSIC:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForAnnotation;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2060
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot define an annotation type for class file version "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_5

    .line 2066
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V8:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForInterface;->JAVA_8:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForInterface;

    goto :goto_1

    :cond_4
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForInterface;->CLASSIC:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForInterface;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_6

    .line 2070
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClass;->ABSTRACT:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClass;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2072
    :cond_6
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClass;->MANIFEST:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForClass;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2074
    :goto_2
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$Compound;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$Compound;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p6, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    .line 2075
    :goto_4
    invoke-interface {v0, p2, v3, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertType(IZZ)V

    .line 2076
    invoke-super/range {p0 .. p6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    .line 2081
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertAnnotation()V

    .line 2082
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_a

    .line 2107
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    const/16 v4, 0x5a

    const/16 v5, 0x53

    if-eq v2, v3, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    const/16 v3, 0x49

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const-string v2, "Ljava/lang/String;"

    .line 2125
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2128
    const-class v2, Ljava/lang/String;

    goto :goto_0

    .line 2126
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot define a default value for type of field "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2122
    :pswitch_0
    const-class v2, Ljava/lang/Double;

    goto :goto_0

    .line 2116
    :cond_1
    const-class v2, Ljava/lang/Long;

    goto :goto_0

    .line 2113
    :cond_2
    :pswitch_1
    const-class v2, Ljava/lang/Integer;

    goto :goto_0

    .line 2119
    :cond_3
    const-class v2, Ljava/lang/Float;

    .line 2130
    :goto_0
    invoke-virtual {v2, p5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, " defines an incompatible default value "

    const-string v7, "Field "

    if-eqz v3, :cond_9

    .line 2132
    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_a

    .line 2134
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_7

    const/16 v3, 0x43

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    const/16 v2, -0x8000

    const/16 v3, 0x7fff

    goto :goto_2

    :cond_6
    const v3, 0xffff

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_7
    const/16 v2, -0x80

    const/16 v3, 0x7f

    .line 2155
    :goto_2
    move-object v4, p5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_8

    if-gt v4, v3, :cond_8

    goto :goto_3

    .line 2157
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2131
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_b

    move v3, v0

    goto :goto_4

    :cond_b
    move v3, v1

    :goto_4
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_c

    move v4, v0

    goto :goto_5

    :cond_c
    move v4, v1

    :goto_5
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_d

    move v5, v0

    goto :goto_6

    :cond_d
    move v5, v1

    :goto_6
    if-eqz p4, :cond_e

    move v6, v0

    goto :goto_7

    :cond_e
    move v6, v1

    :goto_7
    move-object v0, v2

    move-object v1, p2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 2161
    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertField(Ljava/lang/String;ZZZZ)V

    .line 2166
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-nez p1, :cond_f

    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->IGNORE_FIELD:Lnet/bytebuddy/jar/asm/FieldVisitor;

    goto :goto_8

    .line 2167
    :cond_f
    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingFieldVisitor;

    invoke-direct {p2, p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingFieldVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;)V

    move-object p1, p2

    :goto_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    and-int/lit16 v3, v1, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    move v9, v5

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    const-string v3, "<init>"

    .line 2179
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "<clinit>"

    .line 2180
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    and-int/lit8 v10, v1, 0xa

    if-nez v10, :cond_4

    move v10, v5

    goto :goto_4

    :cond_4
    move v10, v4

    .line 2182
    :goto_4
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v3, "()"

    .line 2183
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "V"

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move v14, v4

    goto :goto_6

    :cond_6
    :goto_5
    move v14, v5

    :goto_6
    if-eqz p4, :cond_7

    move v15, v5

    goto :goto_7

    :cond_7
    move v15, v4

    :goto_7
    move-object/from16 v3, p2

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v14

    move v11, v15

    .line 2174
    invoke-interface/range {v2 .. v11}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertMethod(Ljava/lang/String;ZZZZZZZZ)V

    .line 2185
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    goto :goto_8

    .line 2186
    :cond_8
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;

    invoke-direct {v2, v0, v1, v12}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/lang/String;)V

    move-object v1, v2

    :goto_8
    return-object v1
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    .line 2093
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertNestMate()V

    .line 2094
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    .line 2099
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertNestMate()V

    .line 2100
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->constraint:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    .line 2087
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertTypeAnnotation()V

    .line 2088
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
