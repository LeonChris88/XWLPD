.class public final Lorg/apache/james/mime4j/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;
    .locals 1

    new-instance v0, Lorg/apache/james/mime4j/Log;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/Log;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
