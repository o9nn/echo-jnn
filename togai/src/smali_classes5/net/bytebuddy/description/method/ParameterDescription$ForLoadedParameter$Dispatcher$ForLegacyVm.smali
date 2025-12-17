.class public final enum Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ParameterDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 535
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    .line 530
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    .line 530
    invoke-virtual {v0}, [Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public getModifiers(Ljava/lang/reflect/AccessibleObject;I)I
    .locals 0

    .line 541
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot dispatch method for java.lang.reflect.Parameter"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/String;
    .locals 0

    .line 555
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot dispatch method for java.lang.reflect.Parameter"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNamePresent(Ljava/lang/reflect/AccessibleObject;I)Z
    .locals 0

    .line 548
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot dispatch method for java.lang.reflect.Parameter"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
