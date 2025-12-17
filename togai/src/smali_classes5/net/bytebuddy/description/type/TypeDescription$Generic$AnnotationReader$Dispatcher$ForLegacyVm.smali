.class public final enum Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2527
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    .line 2522
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    .line 2522
    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public resolve(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 2589
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Loaded annotated type cannot be represented on this VM"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveExceptionType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0

    .line 2575
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method

.method public resolveFieldType(Ljava/lang/reflect/Field;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0

    .line 2554
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method

.method public resolveInterfaceType(Ljava/lang/Class;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation

    .line 2547
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method

.method public resolveParameterType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0

    .line 2568
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method

.method public resolveReceiverType(Ljava/lang/reflect/AccessibleObject;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    .line 2582
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object p1
.end method

.method public resolveReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0

    .line 2561
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method

.method public resolveSuperClassType(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation

    .line 2540
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation

    .line 2533
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method
