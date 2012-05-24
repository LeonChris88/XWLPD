.class public final Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;
.super Ljava/lang/Object;
.source "ReflectionSocketFactory.java"


# static fields
.field private static INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field private static REFLECTION_FAILED:Z

.field private static SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
