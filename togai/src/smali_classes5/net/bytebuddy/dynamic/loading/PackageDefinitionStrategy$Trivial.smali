.class public final enum Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;
.super Ljava/lang/Enum;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trivial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    .line 68
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    .line 68
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    return-object v0
.end method


# virtual methods
.method public define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
    .locals 0

    .line 79
    sget-object p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    return-object p1
.end method
