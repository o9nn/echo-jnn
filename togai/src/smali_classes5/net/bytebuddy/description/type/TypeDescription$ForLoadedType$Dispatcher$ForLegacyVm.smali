.class public final enum Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8619
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    .line 8614
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    .line 8614
    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public getNestHost(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    return-object p1
.end method

.method public getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method public isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
