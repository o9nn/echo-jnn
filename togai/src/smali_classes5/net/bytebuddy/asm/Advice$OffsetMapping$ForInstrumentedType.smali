.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInstrumentedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1976
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1971
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    .line 1971
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    .line 1971
    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;
    .locals 0

    .line 1986
    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForStackManipulation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    move-result-object p1

    return-object p1
.end method
