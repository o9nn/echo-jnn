.class public final enum Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;
.super Ljava/lang/Enum;
.source "HashCodeMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForSuperMethodCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;",
        ">;",
        "Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 249
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;->$VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    .line 244
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;->$VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    .line 244
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 255
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v2, 0x0

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->access$000()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->special(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {p1, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not declare a super class"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
