.class public final enum Lnet/bytebuddy/utility/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaType;

.field public static final enum CALL_SITE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CLASS_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum DIRECT_METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum DYNAMIC_CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum METHOD_TYPE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

.field public static final enum MODULE:Lnet/bytebuddy/utility/JavaType;

.field public static final enum PARAMETER:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR_OF_FIELD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum TYPE_DESCRIPTOR_OF_METHOD:Lnet/bytebuddy/utility/JavaType;

.field public static final enum VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;


# instance fields
.field private transient synthetic isAvailable_ZcMrWy34:Z

.field private transient synthetic load_R3ErVENg:Ljava/lang/Class;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 36
    new-instance v23, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v7, v23

    const-string v1, "CONSTABLE"

    const/4 v2, 0x0

    const-string v3, "java.lang.constant.Constable"

    const/16 v4, 0x601

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v15, 0x0

    new-array v6, v15, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v23, Lnet/bytebuddy/utility/JavaType;->CONSTABLE:Lnet/bytebuddy/utility/JavaType;

    .line 41
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object v8, v0

    const-string v17, "TYPE_DESCRIPTOR"

    const/16 v18, 0x1

    const-string v19, "java.lang.invoke.TypeDescriptor"

    const/16 v20, 0x601

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v1, v15, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

    .line 46
    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    move-object v9, v1

    const-string v25, "TYPE_DESCRIPTOR_OF_FIELD"

    const/16 v26, 0x2

    const-string v27, "java.lang.invoke.TypeDescriptor$OfField"

    const/16 v28, 0x601

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v2, 0x1

    new-array v3, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 49
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    aput-object v4, v3, v15

    move-object/from16 v24, v1

    move-object/from16 v30, v3

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR_OF_FIELD:Lnet/bytebuddy/utility/JavaType;

    .line 54
    new-instance v3, Lnet/bytebuddy/utility/JavaType;

    move-object v10, v3

    const-string v17, "TYPE_DESCRIPTOR_OF_METHOD"

    const/16 v18, 0x3

    const-string v19, "java.lang.invoke.TypeDescriptor$OfMethod"

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v4, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 57
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    aput-object v0, v4, v15

    move-object/from16 v16, v3

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v3, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR_OF_METHOD:Lnet/bytebuddy/utility/JavaType;

    .line 62
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object v11, v0

    const-string v25, "CONSTANT_DESCRIPTION"

    const/16 v26, 0x4

    const-string v27, "java.lang.constant.ConstantDesc"

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v4, v15, [Lnet/bytebuddy/description/type/TypeDefinition;

    move-object/from16 v24, v0

    move-object/from16 v30, v4

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 67
    new-instance v4, Lnet/bytebuddy/utility/JavaType;

    move-object v12, v4

    const-string v17, "DYNAMIC_CONSTANT_DESCRIPTION"

    const/16 v18, 0x5

    const-string v19, "java.lang.constant.DynamicConstantDesc"

    const/16 v20, 0x401

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v5, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 70
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v5, v15

    move-object/from16 v16, v4

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v4, Lnet/bytebuddy/utility/JavaType;->DYNAMIC_CONSTANT_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 75
    new-instance v4, Lnet/bytebuddy/utility/JavaType;

    move-object v13, v4

    const-string v25, "CLASS_DESCRIPTION"

    const/16 v26, 0x6

    const-string v27, "java.lang.constant.ClassDesc"

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v5, 0x2

    new-array v6, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 78
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    aput-object v14, v6, v15

    .line 79
    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    aput-object v1, v6, v2

    move-object/from16 v24, v4

    move-object/from16 v30, v6

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v4, Lnet/bytebuddy/utility/JavaType;->CLASS_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 84
    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    move-object v14, v1

    const-string v17, "METHOD_TYPE_DESCRIPTION"

    const/16 v18, 0x7

    const-string v19, "java.lang.constant.MethodTypeDesc"

    const/16 v20, 0x601

    sget-object v21, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v4, v5, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 87
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v4, v15

    .line 88
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v4, v2

    move-object/from16 v16, v1

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 93
    new-instance v1, Lnet/bytebuddy/utility/JavaType;

    move v4, v15

    move-object v15, v1

    const-string v25, "METHOD_HANDLE_DESCRIPTION"

    const/16 v26, 0x8

    const-string v27, "java.lang.constant.MethodHandleDesc"

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v6, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 96
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    aput-object v0, v6, v4

    move-object/from16 v24, v1

    move-object/from16 v30, v6

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 101
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v16, v0

    const-string v31, "DIRECT_METHOD_HANDLE_DESCRIPTION"

    const/16 v32, 0x9

    const-string v33, "java.lang.constant.DirectMethodHandleDesc"

    const/16 v34, 0x601

    sget-object v35, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v6, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 104
    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    aput-object v1, v6, v4

    move-object/from16 v30, v0

    move-object/from16 v36, v6

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->DIRECT_METHOD_HANDLE_DESCRIPTION:Lnet/bytebuddy/utility/JavaType;

    .line 109
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v17, v0

    const-string v25, "METHOD_HANDLE"

    const/16 v26, 0xa

    const-string v27, "java.lang.invoke.MethodHandle"

    const/16 v28, 0x401

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v1, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual/range {v23 .. v23}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v1, v4

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 114
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v18, v0

    const-string v31, "METHOD_HANDLES"

    const/16 v32, 0xb

    const-string v33, "java.lang.invoke.MethodHandles"

    const/16 v34, 0x1

    const-class v35, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES:Lnet/bytebuddy/utility/JavaType;

    .line 119
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v19, v0

    const-string v25, "METHOD_TYPE"

    const/16 v26, 0xc

    const-string v27, "java.lang.invoke.MethodType"

    const/16 v28, 0x11

    sget-object v29, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 122
    invoke-virtual/range {v23 .. v23}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v1, v4

    .line 123
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    aput-object v3, v1, v2

    const-class v3, Ljava/io/Serializable;

    .line 124
    invoke-static {v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    aput-object v3, v1, v5

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 129
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v20, v0

    const-string v31, "METHOD_HANDLES_LOOKUP"

    const/16 v32, 0xd

    const-string v33, "java.lang.invoke.MethodHandles$Lookup"

    const/16 v34, 0x19

    const-class v35, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 134
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v21, v0

    const-string v25, "CALL_SITE"

    const/16 v26, 0xe

    const-string v27, "java.lang.invoke.CallSite"

    const/16 v28, 0x401

    const-class v29, Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->CALL_SITE:Lnet/bytebuddy/utility/JavaType;

    .line 139
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v22, v0

    const-string v31, "VAR_HANDLE"

    const/16 v32, 0xf

    const-string v33, "java.lang.invoke.VarHandle"

    const/16 v34, 0x401

    sget-object v35, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-array v1, v2, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual/range {v23 .. v23}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    aput-object v3, v1, v4

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->VAR_HANDLE:Lnet/bytebuddy/utility/JavaType;

    .line 144
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v23, v0

    const-string v25, "PARAMETER"

    const/16 v26, 0x10

    const-string v27, "java.lang.reflect.Parameter"

    const/16 v28, 0x11

    const-class v29, Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/reflect/AnnotatedElement;

    aput-object v3, v1, v4

    move-object/from16 v24, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->PARAMETER:Lnet/bytebuddy/utility/JavaType;

    .line 149
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v24, v0

    const-string v31, "EXECUTABLE"

    const/16 v32, 0x11

    const-string v33, "java.lang.reflect.Executable"

    const-class v35, Ljava/lang/reflect/AccessibleObject;

    new-array v1, v5, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/reflect/Member;

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/reflect/GenericDeclaration;

    aput-object v3, v1, v2

    move-object/from16 v30, v0

    move-object/from16 v36, v1

    invoke-direct/range {v30 .. v36}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

    .line 154
    new-instance v0, Lnet/bytebuddy/utility/JavaType;

    move-object/from16 v25, v0

    const-string v37, "MODULE"

    const/16 v38, 0x12

    const-string v39, "java.lang.Module"

    const/16 v40, 0x11

    const-class v41, Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/reflect/AnnotatedElement;

    aput-object v2, v1, v4

    move-object/from16 v36, v0

    move-object/from16 v42, v1

    invoke-direct/range {v36 .. v42}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->MODULE:Lnet/bytebuddy/utility/JavaType;

    filled-new-array/range {v7 .. v25}, [Lnet/bytebuddy/utility/JavaType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 170
    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p5}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p5

    :goto_0
    move-object v5, p5

    new-instance v6, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v6, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 170
    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDefinition;[Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "[",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 184
    sget-object p5, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p5}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p5

    :goto_0
    move-object v5, p5

    new-instance v6, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v6, p6}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 184
    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/utility/JavaType;-><init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeList$Generic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/TypeList$Generic;",
            ")V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    new-instance p1, Lnet/bytebuddy/description/type/TypeDescription$Latent;

    invoke-direct {p1, p3, p4, p5, p6}, Lnet/bytebuddy/description/type/TypeDescription$Latent;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaType;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaType;

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaType;->$VALUES:[Lnet/bytebuddy/utility/JavaType;

    .line 31
    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaType;

    return-object v0
.end method


# virtual methods
.method public getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/utility/JavaType;->isAvailable_ZcMrWy34:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :catch_0
    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lnet/bytebuddy/utility/JavaType;->isAvailable_ZcMrWy34:Z

    move v2, v1

    :cond_1
    return v2
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2

    .line 254
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public load()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->load_R3ErVENg:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 219
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaType;->load_R3ErVENg:Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/utility/JavaType;->load_R3ErVENg:Ljava/lang/Class;

    :goto_1
    return-object v0
.end method

.method public loadAsDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
