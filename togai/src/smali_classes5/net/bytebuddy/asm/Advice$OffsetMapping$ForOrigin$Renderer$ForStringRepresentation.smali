.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForStringRepresentation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2662
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2657
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    .line 2657
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    .line 2657
    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 0

    .line 2668
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
