.class public final enum Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;
.super Ljava/lang/Enum;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForLegacyVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;",
        ">;",
        "Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5533
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5528
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    .line 5528
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;->$VALUES:[Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    .line 5528
    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForLegacyVm;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5539
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5541
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 5545
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 5546
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5549
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5552
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 5549
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 5550
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 5552
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 5553
    throw p1
.end method
