.class public final enum Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
.super Ljava/lang/Enum;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

.field public static final enum RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

.field public static final enum UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

.field public static final enum UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 371
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 377
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const-string v2, "UNRESOLVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 382
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const-string v3, "RESOLVED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    filled-new-array {v0, v1, v2}, [Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 1

    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 365
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 365
    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object v0
.end method


# virtual methods
.method public isDefined()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResolved()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
