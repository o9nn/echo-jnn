.class Lorg/bouncycastle/pqc/crypto/sike/PointProj;
.super Ljava/lang/Object;


# instance fields
.field X:[[J

.field Z:[[J


# direct methods
.method constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v0, p1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    filled-new-array {v0, p1}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    return-void
.end method
