.class public final enum Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;
.super Ljava/lang/Enum;
.source "Implementation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Context$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Disabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation$Context$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 697
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 692
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    .line 692
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    .line 692
    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    .locals 0

    .line 707
    invoke-interface {p3}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->isDefined()Z

    move-result p2

    if-nez p2, :cond_0

    .line 710
    new-instance p2, Lnet/bytebuddy/implementation/Implementation$Context$Disabled;

    invoke-direct {p2, p1, p4}, Lnet/bytebuddy/implementation/Implementation$Context$Disabled;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;)V

    return-object p2

    .line 708
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Cannot define type initializer which was explicitly disabled: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
