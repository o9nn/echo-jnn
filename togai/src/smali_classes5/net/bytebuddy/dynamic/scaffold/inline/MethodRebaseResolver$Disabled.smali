.class public final enum Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;
.super Ljava/lang/Enum;
.source "MethodRebaseResolver.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    .line 75
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    .line 75
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Disabled;

    return-object v0
.end method


# virtual methods
.method public asTokenMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAuxiliaryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;
    .locals 1

    .line 86
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$Preserved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$Preserved;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method
