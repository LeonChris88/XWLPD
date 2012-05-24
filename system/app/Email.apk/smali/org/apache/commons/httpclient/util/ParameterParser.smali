.class public Lorg/apache/commons/httpclient/util/ParameterParser;
.super Ljava/lang/Object;
.source "ParameterParser.java"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    return-void
.end method
