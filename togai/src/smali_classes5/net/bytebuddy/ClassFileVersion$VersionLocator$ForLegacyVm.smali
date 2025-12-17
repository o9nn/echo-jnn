.class public final enum Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;
.super Ljava/lang/Enum;
.source "ClassFileVersion.java"

# interfaces
.implements Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

.field private static final JAVA_VERSION_PROPERTY:Ljava/lang/String; = "java.version"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 502
    new-instance v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 497
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    .line 497
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    .line 497
    invoke-virtual {v0}, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public locate()Lnet/bytebuddy/ClassFileVersion;
    .locals 7

    .line 513
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, -0x1

    filled-new-array {v2, v1, v1}, [I

    move-result-object v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 516
    aget v5, v1, v5

    add-int/2addr v5, v3

    const/16 v6, 0x2e

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    aput v5, v1, v4

    if-eq v5, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 518
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This JVM\'s version string does not seem to be valid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1
    aget v2, v1, v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    const-string v0, "java.version"

    .line 528
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
