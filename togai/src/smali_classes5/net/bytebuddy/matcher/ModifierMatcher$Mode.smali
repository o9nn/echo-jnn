.class public final enum Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
.super Ljava/lang/Enum;
.source "ModifierMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ModifierMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/ModifierMatcher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;


# instance fields
.field private final description:Ljava/lang/String;

.field private final modifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 64
    new-instance v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v0, v1

    const-string v2, "isPublic()"

    const-string v3, "PUBLIC"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 69
    new-instance v2, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v1, v2

    const-string v3, "isProtected()"

    const-string v4, "PROTECTED"

    const/4 v6, 0x4

    invoke-direct {v2, v4, v5, v6, v3}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 74
    new-instance v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "isPrivate()"

    const-string v7, "PRIVATE"

    invoke-direct {v3, v7, v4, v4, v5}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 79
    new-instance v4, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v3, v4

    const-string v5, "isFinal()"

    const-string v7, "FINAL"

    const/4 v8, 0x3

    const/16 v15, 0x10

    invoke-direct {v4, v7, v8, v15, v5}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 84
    new-instance v5, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v4, v5

    const-string v7, "isStatic()"

    const-string v8, "STATIC"

    const/16 v9, 0x8

    invoke-direct {v5, v8, v6, v9, v7}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 89
    new-instance v6, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v5, v6

    const/16 v7, 0x20

    const-string v8, "isSynchronized()"

    const-string v10, "SYNCHRONIZED"

    const/4 v11, 0x5

    invoke-direct {v6, v10, v11, v7, v8}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 94
    new-instance v7, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v6, v7

    const/16 v8, 0x100

    const-string v10, "isNative()"

    const-string v11, "NATIVE"

    const/4 v12, 0x6

    invoke-direct {v7, v11, v12, v8, v10}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 99
    new-instance v8, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v7, v8

    const/16 v10, 0x800

    const-string v11, "isStrict()"

    const-string v12, "STRICT"

    const/4 v13, 0x7

    invoke-direct {v8, v12, v13, v10, v11}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 104
    new-instance v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v8, v10

    const-string v11, "isVarArgs()"

    const-string v12, "VAR_ARGS"

    const/16 v14, 0x80

    invoke-direct {v10, v12, v9, v14, v11}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 109
    new-instance v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v9, v10

    const/16 v11, 0x1000

    const-string v12, "isSynthetic()"

    const-string v13, "SYNTHETIC"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v11, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 114
    new-instance v11, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v10, v11

    const-string v12, "isBridge()"

    const-string v13, "BRIDGE"

    const/16 v14, 0xa

    const/16 v15, 0x40

    invoke-direct {v11, v13, v14, v15, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 119
    new-instance v12, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v11, v12

    const/16 v13, 0x400

    const-string v14, "isAbstract()"

    const-string v15, "ABSTRACT"

    move-object/from16 v19, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 124
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v12, v0

    const/16 v13, 0x200

    const-string v14, "isInterface()"

    const-string v15, "INTERFACE"

    move-object/from16 v20, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v13, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 129
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object v13, v0

    const/16 v1, 0x2000

    const-string v14, "isAnnotation()"

    const-string v15, "ANNOTATION"

    move-object/from16 v21, v2

    const/16 v2, 0xd

    invoke-direct {v0, v15, v2, v1, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 134
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v1, 0x80

    move-object v14, v0

    const/16 v2, 0xe

    const-string v15, "isVolatile()"

    const-string v1, "VOLATILE"

    move-object/from16 v22, v3

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v15}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 139
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v1, 0x10

    move-object v15, v0

    const/16 v2, 0xf

    const-string v3, "isTransient()"

    const-string v1, "TRANSIENT"

    move-object/from16 v18, v4

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v4, v3}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 144
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object/from16 v16, v0

    const v1, 0x8000

    const-string v2, "isMandated()"

    const-string v3, "MANDATED"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 149
    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object/from16 v17, v0

    const/16 v1, 0x4000

    const-string v2, "isEnum()"

    const-string v3, "ENUMERATION"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    filled-new-array/range {v0 .. v17}, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->modifiers:I

    iput-object p4, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 59
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 59
    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-object v0
.end method


# virtual methods
.method protected getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->description:Ljava/lang/String;

    return-object v0
.end method

.method protected getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->modifiers:I

    return v0
.end method
