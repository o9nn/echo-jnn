.class synthetic Lnet/bytebuddy/asm/MemberSubstitution$1;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$bytebuddy$asm$MemberSubstitution$Replacement$InvocationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1513
    invoke-static {}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->values()[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$1;->$SwitchMap$net$bytebuddy$asm$MemberSubstitution$Replacement$InvocationType:[I

    :try_start_0
    sget-object v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->VIRTUAL:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    invoke-virtual {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$1;->$SwitchMap$net$bytebuddy$asm$MemberSubstitution$Replacement$InvocationType:[I

    sget-object v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->SUPER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    invoke-virtual {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
