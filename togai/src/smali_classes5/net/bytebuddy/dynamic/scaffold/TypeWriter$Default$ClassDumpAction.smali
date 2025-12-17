.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;
.super Ljava/lang/Object;
.source "TypeWriter.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClassDumpAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NOTHING:Ljava/lang/Void;


# instance fields
.field private final binaryRepresentation:[B

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final original:Z

.field private final target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Z[B)V
    .locals 0

    .line 5210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->target:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->original:Z

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->binaryRepresentation:[B

    return-void
.end method

.method protected static dump(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Z[B)V
    .locals 1

    if-eqz p0, :cond_0

    .line 5228
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Z[B)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->original:Z

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->original:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->target:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->binaryRepresentation:[B

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->binaryRepresentation:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->target:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->original:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->binaryRepresentation:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5174
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5239
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->target:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->original:Z

    if-eqz v4, :cond_0

    const-string v4, "-original."

    goto :goto_0

    :cond_0
    const-string v4, "."

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->binaryRepresentation:[B

    .line 5243
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;->NOTHING:Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5246
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 5247
    throw v1
.end method
