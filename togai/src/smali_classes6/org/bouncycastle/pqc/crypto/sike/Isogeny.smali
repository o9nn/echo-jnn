.class Lorg/bouncycastle/pqc/crypto/sike/Isogeny;
.super Ljava/lang/Object;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    return-void
.end method

.method private xDBLADD_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[J)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2correction([[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v2, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v1, p5, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p5, p5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p5, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p5, p5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p5, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p5, p5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p5, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p5, p5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p5, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p5, p4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p4, p3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method private xDBL_e(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, p1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v5, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v5, v1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, p3, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v4, v0, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private xTPL(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v7}, [I

    move-result-object v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v7, v8, v9, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v0, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v7, v8, v9, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v7, v8, v9, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v7, v8, p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p4, v4, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v6, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v5, v3, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, v0, v2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method private xTPL_fast(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v5, v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, v4, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v5, p3, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v3, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v3, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v0, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2shl([[JI[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v0, v3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v2, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v2, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2shl([[JI[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v2, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p3, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p3, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p3, p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method


# virtual methods
.method protected CompleteMPoint([[JLorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v4, 0x2

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v9}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v11}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[J

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v12}, [I

    move-result-object v4

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v14, 0x0

    aget-object v15, v5, v14

    invoke-virtual {v12, v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v12, v12, v14

    aget-object v13, v3, v14

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-static {v12, v13, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v12, v12, v13

    aget-object v15, v3, v13

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v13, v13, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-static {v12, v15, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->subarrayEquals([J[JI)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v1, v5, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v12, v13, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v12, v12, v14

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v15, 0x1

    aget-object v13, v13, v15

    aget-object v15, v11, v14

    invoke-virtual {v3, v12, v13, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v15, v15, v14

    aget-object v14, v11, v13

    invoke-virtual {v3, v12, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v14, 0x0

    aget-object v12, v12, v14

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v15, v15, v13

    aget-object v13, v4, v14

    invoke-virtual {v3, v12, v15, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v14, v15, v14

    aget-object v13, v4, v13

    invoke-virtual {v3, v12, v14, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v11, v4, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12, v6, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v11, v8, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v6, v4, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v9, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->sqrt_Fp2([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont_bingcd([[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v3, v1, v10, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v10, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v1, v7, v11, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {v1, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    :goto_1
    return-void
.end method

.method protected CompletePoint(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v4, 0x2

    filled-new-array {v4, v3}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v9}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[J

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v11, v11, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v4, v11}, [I

    move-result-object v4

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v13, 0x0

    aget-object v14, v4, v13

    invoke-virtual {v11, v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v11, v12, v14, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v12, v12, v13

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v15, 0x1

    aget-object v14, v14, v15

    aget-object v15, v9, v13

    invoke-virtual {v11, v12, v14, v15}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v14, 0x1

    aget-object v12, v12, v14

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v15, v15, v13

    aget-object v13, v9, v14

    invoke-virtual {v11, v12, v15, v13}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v15, v15, v14

    aget-object v14, v10, v13

    invoke-virtual {v11, v12, v15, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v14, 0x1

    aget-object v12, v12, v14

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v13, v15, v13

    aget-object v14, v10, v14

    invoke-virtual {v11, v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpsubPRIME([J[J[J)V

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v11, v9, v10, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v10, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->sqrt_Fp2([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v5, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont_bingcd([[J)V

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->X:[[J

    invoke-virtual {v3, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v8, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Y:[[J

    invoke-virtual {v1, v7, v9, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProjFull;->Z:[[J

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    return-void
.end method

.method protected Double(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, p1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v5, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v5, v1, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, p3, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v6, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v6, v4, v0, v7}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected LADDER3PT([[J[[J[[J[JILorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v5, 0x2

    filled-new-array {v5, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ALICE:I

    const/4 v6, 0x1

    move/from16 v7, p5

    if-ne v7, v5, :cond_0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OALICE_BITS:I

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->OBOB_BITS:I

    sub-int/2addr v5, v6

    :goto_0
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v9, 0x0

    aget-object v10, v4, v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v4, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v8, p7

    invoke-virtual {v7, v8, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v7, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v10, p2

    invoke-virtual {v7, v10, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v10, v2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v10, v10, v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object/from16 v10, p3

    invoke-virtual {v7, v10, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v10, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v10, v10, v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    move-object v10, p1

    invoke-virtual {v7, p1, v8}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v10, v10, v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpzero([J)V

    move v6, v9

    :goto_1
    const-wide/16 v7, 0x0

    if-ge v9, v5, :cond_1

    ushr-int/lit8 v10, v9, 0x6

    aget-wide v10, p4, v10

    and-int/lit8 v12, v9, 0x3f

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0x1

    and-long/2addr v10, v12

    long-to-int v10, v10

    xor-int/2addr v6, v10

    int-to-long v11, v6

    sub-long/2addr v7, v11

    invoke-virtual {p0, v1, v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p0, v2, v3, v6, v4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLADD(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v7, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v11, v3, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v6, v7, v8, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_1

    :cond_1
    int-to-long v4, v6

    sub-long/2addr v7, v4

    invoke-virtual {p0, v1, v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    return-void
.end method

.method Ladder(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[J[[JILorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v10, v0}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [[J

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v12, 0x0

    aget-object v2, v11, v12

    invoke-virtual {v0, v1, v12, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, v11, v12

    invoke-virtual {v0, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpaddPRIME([J[J[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v11, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, v11, v11}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2div2([[J[[J)V

    const/4 v0, 0x1

    add-int/lit8 v1, p4, -0x1

    shr-int/lit8 v2, v1, 0x6

    aget-wide v2, p2, v2

    and-int/lit8 v4, v1, 0x3f

    ushr-long/2addr v2, v4

    const-wide/16 v13, 0x1

    :goto_0
    and-long/2addr v2, v13

    long-to-int v2, v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v2, v1, 0x6

    aget-wide v2, p2, v2

    and-int/lit8 v4, v1, 0x3f

    ushr-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    invoke-direct {v6, v7, v10, v11, v0}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBL_e(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V

    sub-int/2addr v1, v0

    move v15, v1

    move v0, v12

    :goto_1
    if-ltz v15, :cond_1

    shr-int/lit8 v1, v15, 0x6

    aget-wide v1, p2, v1

    and-int/lit8 v3, v15, 0x3f

    ushr-long/2addr v1, v3

    and-long/2addr v1, v13

    long-to-int v5, v1

    xor-int/2addr v0, v5

    rsub-int/lit8 v0, v0, 0x0

    int-to-long v0, v0

    invoke-virtual {v6, v9, v10, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    iget-object v3, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move/from16 v16, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBLADD_proj(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[J)V

    add-int/lit8 v15, v15, -0x1

    move/from16 v0, v16

    goto :goto_1

    :cond_1
    sub-int/2addr v12, v0

    int-to-long v0, v12

    invoke-virtual {v6, v9, v10, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v2, v8, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    return-void
.end method

.method protected eval_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v4, v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v4, v5, p2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v2, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p2, v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected eval_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v3, v4, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v4, 0x1

    aget-object p2, p2, v4

    invoke-virtual {v3, p2, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v2, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p2, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected eval_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[[J)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p2, v1

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v2, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, v0, v2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    const/4 v3, 0x0

    aget-object p2, p2, v3

    invoke-virtual {v1, p2, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p2, v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v1, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p2, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p2, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected get_2_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, p2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    return-void
.end method

.method protected get_3_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v5}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v8, 0x0

    aget-object v9, p4, v8

    invoke-virtual {v5, v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v6, p4, v8

    invoke-virtual {v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v8, 0x1

    aget-object v9, p4, v8

    invoke-virtual {v5, v6, v7, v9}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p4, p4, v8

    invoke-virtual {v5, p4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p4, v5, p1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v0, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v4, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v3, v1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v4, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected get_4_isog(Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J[[[J)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v3, 0x1

    aget-object v3, p4, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v3, 0x2

    aget-object v3, p4, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    const/4 v2, 0x0

    aget-object v3, p4, v2

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p4, v2

    invoke-virtual {v0, v1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object v1, p4, v2

    invoke-virtual {v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    aget-object p4, p4, v2

    invoke-virtual {p3, p4, p4, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p3, p3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, p2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    return-void
.end method

.method protected get_A([[J[[J[[J[[J)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->Montgomery_one:[J

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fpcopy([JI[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v2, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, p4, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, p3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p4, v1, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v2, p3, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p4, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont([[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p4, v0, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p4, v2, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    return-void
.end method

.method protected inv_3_way([[J[[J[[J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v4}, [I

    move-result-object v1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, p3, v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont([[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, p3, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v3, p2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v4, v3, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v0, v2, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p2, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2copy([[J[[J)V

    return-void
.end method

.method protected j_inv([[J[[J[[J)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v2, p1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sub([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2inv_mont([[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected swap_points(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;J)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    xor-long/2addr v2, v4

    and-long/2addr v2, p3

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, v4, v0

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    xor-long/2addr v5, v2

    aput-wide v5, v4, v1

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v4, v4, v0

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    xor-long/2addr v2, v5

    aput-wide v2, v4, v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-wide v4, v2, v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, v2, v3

    aget-wide v6, v2, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, v2, v3

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v6, v6, v3

    aget-wide v6, v6, v1

    xor-long/2addr v6, v4

    aput-wide v6, v2, v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v2, v2, v3

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    aget-object v6, v6, v3

    aget-wide v6, v6, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v0

    aget-wide v4, v2, v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v0

    aget-wide v6, v2, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v0

    aget-wide v6, v6, v1

    xor-long/2addr v6, v4

    aput-wide v6, v2, v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v0

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v0

    aget-wide v6, v6, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v3

    aget-wide v4, v2, v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v3

    aget-wide v6, v2, v1

    xor-long/2addr v4, v6

    and-long/2addr v4, p3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v3

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v6, v6, v3

    aget-wide v6, v6, v1

    xor-long/2addr v6, v4

    aput-wide v6, v2, v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v2, v2, v3

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    aget-object v3, v6, v3

    aget-wide v6, v3, v1

    xor-long v3, v4, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method protected xDBL(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v2, v3, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p4, v0, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, v1, p4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v1, v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, p3, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p3, v0, p4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p3, v1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected xDBLADD(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v3, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v2, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {v3, p4, v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p4, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_sub_p2([[J[[J[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p4, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p4, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->mp2_add([[J[[J[[J)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p4, p4, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p4, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->X:[[J

    invoke-virtual {p1, p4, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2sqr_mont([[J[[J)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object p4, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/sike/PointProj;->Z:[[J

    invoke-virtual {p1, p4, p3, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->fp2mul_mont([[J[[J[[J)V

    return-void
.end method

.method protected xDBLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->copy_words(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p5, :cond_0

    invoke-virtual {p0, p2, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xDBL(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected xTPLe(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[JI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->copy_words(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p5, :cond_0

    invoke-direct {p0, p2, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPL(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J[[J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method xTPLe_fast(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[JI)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/PointProj;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->NWORDS_FIELD:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sike/PointProj;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->copy_words(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    invoke-direct {p0, v0, v0, p3}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->xTPL_fast(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;[[J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->copy_words(Lorg/bouncycastle/pqc/crypto/sike/PointProj;Lorg/bouncycastle/pqc/crypto/sike/PointProj;)V

    return-void
.end method
