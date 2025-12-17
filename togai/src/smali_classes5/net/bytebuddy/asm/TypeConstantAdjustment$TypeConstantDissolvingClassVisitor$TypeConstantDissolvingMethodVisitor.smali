.class public Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor$TypeConstantDissolvingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypeConstantAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TypeConstantDissolvingMethodVisitor"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "(Ljava/lang/String;)Ljava/lang/Class;"

.field private static final FOR_NAME:Ljava/lang/String; = "forName"

.field private static final JAVA_LANG_CLASS:Ljava/lang/String; = "java/lang/Class"


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    .line 137
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 6

    .line 143
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_1

    .line 144
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Type;

    .line 145
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/Class"

    const-string v3, "forName"

    const-string v4, "(Ljava/lang/String;)Ljava/lang/Class;"

    const/4 v5, 0x0

    move-object v0, p0

    .line 149
    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 153
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method
